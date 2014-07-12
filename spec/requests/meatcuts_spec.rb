require 'rails_helper'

RSpec.describe "Meatcuts", :type => :request do
  describe "GET /meatcuts" do
    it "works! (now write some real specs)" do
      get meatcuts_path
      expect(response.status).to be(200)
    end
  end
end
