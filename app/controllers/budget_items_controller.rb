class BudgetItemsController < ApplicationController
  def new
    @budget_item = BudgetItem.new
  end

  def create
    if current_user
      @budget_item = current_user.BudgetItem.new(params[:budget_item])
      if @budget_item.save
        redirect_to budget_path
      else
        render "new"
      end
    end
  end
end
