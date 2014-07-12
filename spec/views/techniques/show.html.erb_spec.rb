require 'rails_helper'

RSpec.describe "techniques/show", :type => :view do
  before(:each) do
    @technique = assign(:technique, Technique.create!(
      :name => "Name",
      :description => "MyText",
      :dry => false,
      :equipment => "Equipment"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Equipment/)
  end
end
