describe BudgetItem do
  before :each do
    @budget_item = BudgetItem.new :description => "Description", :estimated_cost => 1, :actual_cost => 1, :position => 1
  end

  describe "#new" do
    it "takes four parameters and returns a BudgetItem object" do
      @budget_item.should be_an_instance_of BudgetItem
    end
  end

  it "requires presence of description" do
    @budget_item.description = ""
    @budget_item.save.should == false
  end
end