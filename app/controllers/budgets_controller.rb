class BudgetsController < ApplicationController
  def show
    if current_user
      @budget = current_user.budget
      if @budget.budget_items.empty?

      end
    else
      redirect_to log_in_path
    end
  end
  
  def update
    if current_user
      @budget = current_user.budget
      if @budget.update_attributes(params[:budget])
        redirect_to budget_path, flash[:success] => "Item added"
      else
        redirect_to budget_path, flash[:error] => "Item not added"
      end
    else
      redirect_to sign_in_path, :notice => "Please sign-in or register"
    end
  end
end
