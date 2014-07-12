require "rails_helper"

RSpec.describe TechniquesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/techniques").to route_to("techniques#index")
    end

    it "routes to #new" do
      expect(:get => "/techniques/new").to route_to("techniques#new")
    end

    it "routes to #show" do
      expect(:get => "/techniques/1").to route_to("techniques#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/techniques/1/edit").to route_to("techniques#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/techniques").to route_to("techniques#create")
    end

    it "routes to #update" do
      expect(:put => "/techniques/1").to route_to("techniques#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/techniques/1").to route_to("techniques#destroy", :id => "1")
    end

  end
end
