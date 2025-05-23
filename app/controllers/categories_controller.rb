class CategoriesController < ApplicationController
  def index
    #@categories = Category.all.order(:ancestry, :name).arrange(order: :id)
    @categories = Category.all.arrange(order: :id)
    @category = Category.new
  end


  def create
    @category = Category.new(category_params)
    @category.ancestry = nil if category_params[:ancestry].blank?
    if @category.save
      @categories = Category.all.order(:ancestry, :name)
      redirect_to categories_path, notice: "カテゴリを追加しました"
    else
      puts "⚠️ 保存失敗: #{@category.errors.full_messages}"
      @categories = Category.all.order(:ancestry, :name)
      flash.now[:alert] = "カテゴリの追加に失敗しました"
      render :index  
    end    
  end
  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_path, notice: "カテゴリを削除しました"
  end


  private

  def category_params
    params.require(:category).permit(:name, :ancestry, :transaction_type)
  end  
end
