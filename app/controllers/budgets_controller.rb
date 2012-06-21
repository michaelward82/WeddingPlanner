class BudgetsController < ApplicationController
  before_filter :require_login

  def show
    @budget = current_user.budget
  end

  def update
    @budget = current_user.budget
    if @budget.update_attributes(params[:budget])
      redirect_to budget_path, :flash => { :success => "Budget changes saved" }
    else
      redirect_to budget_path, :flash => { :error => "Budget changes were not saved" }
    end
  end

  private

  def require_login
    unless current_user then redirect_to log_in_path end
  end
end