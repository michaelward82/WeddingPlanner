describe Budget do
  before :each do
    @budget = Budget.new
  end

  describe "a new budget" do
    it "should have default budget_items data after creation" do
      @budget.save
      @budget.budget_items.count.should > 0
    end
  end
end