class CreateTransactions < ActiveRecord::Migration[8.0]
  def change
    create_table :transactions do |t|
      t.date :date
      t.string :transaction_type
      t.integer :category_id
      t.decimal :amount
      t.string :note

      t.timestamps
    end
  end
end
