class ChangeNullConstraintsOnTransactions < ActiveRecord::Migration[7.1]
  def change
    change_column_null :transactions, :category_id, false
    change_column_null :transactions, :amount, false
    change_column_null :transactions, :note, false
  end
end
