class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.string :income
      t.string :expense
      t.string :type
      t.integer :amount
      t.date :date
      t.belongs_to :user, foreign_key: true
      t.belongs_to :budget, foreign_key: true

      t.timestamps
    end
  end
end
