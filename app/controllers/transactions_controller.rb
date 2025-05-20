class TransactionsController < ApplicationController
  def index
    @transactions = Transaction.includes(:category).order(date: :asc)
  end

  def new
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.new(transaction_params)
    if @transaction.save
      redirect_to new_transaction_path, notice: "取引を登録しました"
    else
      flash.now[:alert] = "登録に失敗しました"
      render :new
    end    
  end

  private

  def transaction_params
    params.require(:transaction).permit(
      :date, :transaction_type, :category_id, :amount, :note
    )
  end  
end
