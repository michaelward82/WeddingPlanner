describe BudgetItem do
  it "does not validate when there is no data" do
    budget_item = BudgetItem.new()
    budget_item.save.should == false
  end
end