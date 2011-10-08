class AddPositionToBudgetItems < ActiveRecord::Migration
  def change
    add_column :budget_items, :position, :integer
  end
end
