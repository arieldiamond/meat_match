require 'rails_helper'

RSpec.describe "techniques/index", :type => :view do
  before(:each) do
    assign(:techniques, [
      Technique.create!(
        :name => "Name",
        :description => "MyText",
        :dry => false,
        :equipment => "Equipment"
      ),
      Technique.create!(
        :name => "Name",
        :description => "MyText",
        :dry => false,
        :equipment => "Equipment"
      )
    ])
  end

  it "renders a list of techniques" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Equipment".to_s, :count => 2
  end
end
