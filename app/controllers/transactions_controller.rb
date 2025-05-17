class TransactionsController < ApplicationController
  def new
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.new(transaction_params)
    if @transaction.save
      redirect_to new_transaction_path, notice: "登録しました"
    else
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
