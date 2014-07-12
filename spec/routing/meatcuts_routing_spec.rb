require "rails_helper"

RSpec.describe MeatcutsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/meatcuts").to route_to("meatcuts#index")
    end

    it "routes to #new" do
      expect(:get => "/meatcuts/new").to route_to("meatcuts#new")
    end

    it "routes to #show" do
      expect(:get => "/meatcuts/1").to route_to("meatcuts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/meatcuts/1/edit").to route_to("meatcuts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/meatcuts").to route_to("meatcuts#create")
    end

    it "routes to #update" do
      expect(:put => "/meatcuts/1").to route_to("meatcuts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/meatcuts/1").to route_to("meatcuts#destroy", :id => "1")
    end

  end
end
