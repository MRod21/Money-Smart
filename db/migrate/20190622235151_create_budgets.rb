class CreateBudgets < ActiveRecord::Migration[5.2]
  def change
    create_table :budgets do |t|
      t.integer :starting_fund
      t.integer :funds_spent
      t.integer :ending_fund
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
