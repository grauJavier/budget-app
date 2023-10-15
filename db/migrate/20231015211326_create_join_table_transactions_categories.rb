class CreateJoinTableTransactionsCategories < ActiveRecord::Migration[7.0]
  def change
    create_join_table :transactions, :categories do |t|
      t.index [:transaction_id, :category_id]
      t.index [:category_id, :transaction_id]
    end
  end
end
