class BudgetsController < ApplicationController
  def show
    if current_user
      @budget = current_user.budget
      if @budget.budget_items.empty?
        set_default_budget_items @budget
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

  private

  def set_default_budget_items(budget)
    default_budget_items = [
      { "description"=>"Insurance",                                 "estimated_cost"=>"110",    "actual_cost"=>"0", "position"=>"1"},
      { "description"=>"The Service",                               "estimated_cost"=>"520",    "actual_cost"=>"0", "position"=>"2"},
      { "description"=>"Reception (venue, food & drinks)",          "estimated_cost"=>"4000",  "actual_cost"=>"0", "position"=>"3"},
      { "description"=>"Evening Reception (venue, food & drinks)",  "estimated_cost"=>"1700",  "actual_cost"=>"0", "position"=>"4"},
      { "description"=>"Entertainment",                             "estimated_cost"=>"850",    "actual_cost"=>"0", "position"=>"5"},
      { "description"=>"Flowers",                                   "estimated_cost"=>"685",    "actual_cost"=>"0", "position"=>"6"},
      { "description"=>"Balloons & Decorations",                    "estimated_cost"=>"460",    "actual_cost"=>"0", "position"=>"7"},
      { "description"=>"The Bride's Outfit",                        "estimated_cost"=>"1590",  "actual_cost"=>"0", "position"=>"8"},
      { "description"=>"Hair and Beauty",                           "estimated_cost"=>"170",    "actual_cost"=>"0", "position"=>"9"},
      { "description"=>"The Groom's Outfit",                        "estimated_cost"=>"200",    "actual_cost"=>"0", "position"=>"10"},
      { "description"=>"Attendants Outfits",                        "estimated_cost"=>"575",    "actual_cost"=>"0", "position"=>"11"},
      { "description"=>"Photography",                               "estimated_cost"=>"905",    "actual_cost"=>"0", "position"=>"12"},
      { "description"=>"Videography",                               "estimated_cost"=>"905",    "actual_cost"=>"0", "position"=>"13"},
      { "description"=>"Transport",                                 "estimated_cost"=>"480",    "actual_cost"=>"0", "position"=>"14"},
      { "description"=>"Stationery",                                "estimated_cost"=>"465",    "actual_cost"=>"0", "position"=>"15"},
      { "description"=>"The Wedding Cake",                          "estimated_cost"=>"370",    "actual_cost"=>"0", "position"=>"16"},
      { "description"=>"Wedding Rings",                             "estimated_cost"=>"630",    "actual_cost"=>"0", "position"=>"17"},
      { "description"=>"Gifts",                                     "estimated_cost"=>"205",    "actual_cost"=>"0", "position"=>"18"},
      { "description"=>"Stag & Hen Nights",                         "estimated_cost"=>"280",    "actual_cost"=>"0", "position"=>"19"},
      { "description"=>"Honeymoon & First night hotel",             "estimated_cost"=>"3400",  "actual_cost"=>"0", "position"=>"20"}
    ]

    default_budget_items.each {|b| @budget.budget_items.new(b) }
  end
end
