class Budget < ActiveRecord::Base
  belongs_to :user
  has_many :budget_items
  
  accepts_nested_attributes_for :budget_items, :allow_destroy => true 
  attr_accessible :budget_items_attributes
end
