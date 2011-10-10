class BudgetItem < ActiveRecord::Base
  belongs_to :budget
  
  acts_as_list
  
  validates_presence_of :description
end
