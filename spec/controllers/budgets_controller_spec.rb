describe BudgetsController do
  describe "when logged out" do
    it "responds to #show with a redirect" do
      get :show
      response.should be_redirect
    end

    it "responds to #update with a redirect" do
      get :update
      response.should be_redirect
    end
  end

  describe "when logged in" do
    before(:each) do
      logged_in
    end

    it "responds to #show with show template" do
      get :show
      response.code.should == "200"
    end

    it "responds to #update with show template" do
      get :update
      response.should be_redirect
    end
  end
end