require 'rails_helper'

context "#associations" do
	it {should have_many(:meals)}
	it {should have_many(:techniques), through(:meals)}
end
