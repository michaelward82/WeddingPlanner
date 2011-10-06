class BudgetItem < ActiveRecord::Base
  belongs_to :budget
  
  validates_presence_of :description
  validates_presence_of :estimated_cost
end
