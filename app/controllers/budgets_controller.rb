class BudgetsController < ApplicationController
  def show
    if current_user
      @budget = current_user.budget
    else
      redirect_to log_in_path
    end
  end
end
