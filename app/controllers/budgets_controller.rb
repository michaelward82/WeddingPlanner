class BudgetsController < ApplicationController
  def show
    if current_user
      @budget = current_user.budget
      if @budget.budget_items.empty?
        #TODO: create budget if it doesn't exist
      end
    else
      redirect_to log_in_path
    end
  end
  
  def update
    @budget = current_user.budget
    if @budget.update_attributes(params[:budget])
      redirect_to budget_path, :flash => { :success => "Budget changes saved" }
    else
      redirect_to budget_path, :flash => { :error => "Budget changes were not saved" }
    end
  end
end
