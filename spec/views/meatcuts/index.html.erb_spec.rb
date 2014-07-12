require 'rails_helper'

RSpec.describe "meatcuts/index", :type => :view do
  before(:each) do
    assign(:meatcuts, [
      Meatcut.create!(
        :name => "Name",
        :animal => "Animal",
        :primal => "Primal",
        :description => "MyText",
        :alt_names => "Alt Names"
      ),
      Meatcut.create!(
        :name => "Name",
        :animal => "Animal",
        :primal => "Primal",
        :description => "MyText",
        :alt_names => "Alt Names"
      )
    ])
  end

  it "renders a list of meatcuts" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Animal".to_s, :count => 2
    assert_select "tr>td", :text => "Primal".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Alt Names".to_s, :count => 2
  end
end
