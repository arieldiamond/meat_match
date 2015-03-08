require 'rails_helper'

context "#associations" do
	it {should have_many(:matches)}
	it {should have_many(:techniques), through(:matches)}
end
