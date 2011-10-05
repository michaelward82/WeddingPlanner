class CreateBudgetItems < ActiveRecord::Migration
  def change
    create_table :budget_items do |t|
      t.integer :budget_id
      t.string :description
      t.decimal :estimated_cost, :scale => 2
      t.decimal :actual_cost, :scale => 2

      t.timestamps
    end
  end
end
