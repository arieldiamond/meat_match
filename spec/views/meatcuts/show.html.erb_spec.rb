require 'rails_helper'

RSpec.describe "meatcuts/show", :type => :view do
  before(:each) do
    @meatcut = assign(:meatcut, Meatcut.create!(
      :name => "Name",
      :animal => "Animal",
      :primal => "Primal",
      :description => "MyText",
      :alt_names => "Alt Names"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Animal/)
    expect(rendered).to match(/Primal/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Alt Names/)
  end
end
