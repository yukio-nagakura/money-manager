class AddTransactionTypeToCategories < ActiveRecord::Migration[8.0]
  def change
    add_column :categories, :transaction_type, :string
  end
end
