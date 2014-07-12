require 'rails_helper'

RSpec.describe "techniques/edit", :type => :view do
  before(:each) do
    @technique = assign(:technique, Technique.create!(
      :name => "MyString",
      :description => "MyText",
      :dry => false,
      :equipment => "MyString"
    ))
  end

  it "renders the edit technique form" do
    render

    assert_select "form[action=?][method=?]", technique_path(@technique), "post" do

      assert_select "input#technique_name[name=?]", "technique[name]"

      assert_select "textarea#technique_description[name=?]", "technique[description]"

      assert_select "input#technique_dry[name=?]", "technique[dry]"

      assert_select "input#technique_equipment[name=?]", "technique[equipment]"
    end
  end
end
