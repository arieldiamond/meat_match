require 'rails_helper'

RSpec.describe "meatcuts/new", :type => :view do
  before(:each) do
    assign(:meatcut, Meatcut.new(
      :name => "MyString",
      :animal => "MyString",
      :primal => "MyString",
      :description => "MyText",
      :alt_names => "MyString"
    ))
  end

  it "renders new meatcut form" do
    render

    assert_select "form[action=?][method=?]", meatcuts_path, "post" do

      assert_select "input#meatcut_name[name=?]", "meatcut[name]"

      assert_select "input#meatcut_animal[name=?]", "meatcut[animal]"

      assert_select "input#meatcut_primal[name=?]", "meatcut[primal]"

      assert_select "textarea#meatcut_description[name=?]", "meatcut[description]"

      assert_select "input#meatcut_alt_names[name=?]", "meatcut[alt_names]"
    end
  end
end
