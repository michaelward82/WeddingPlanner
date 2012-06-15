describe BudgetItem do
  before :each do
    @budget_item = BudgetItem.new :description => "Description", :estimated_cost => 1, :actual_cost => 1, :position => 1
  end

  it "requires presence of description" do
    @budget_item.description = ""
    @budget_item.save.should_not == true
  end

  it "does not validate non numeric values for estimated_cost" do
    @budget_item.estimated_cost = "NaN"
    @budget_item.save.should_not == true
  end

  it "does not validate non numeric values for actual_cost" do
    @budget_item.actual_cost = "NaN"
    @budget_item.save.should_not == true
  end
end