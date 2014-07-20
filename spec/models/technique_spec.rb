require 'rails_helper'

context "#associations" do
	it {should have_many(:matches)}
	it {should have_many(:meatcuts), through(:matches)}
end