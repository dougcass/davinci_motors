require 'rails_helper'

feature "Editing Cars" do
  scenario "can edit a car" do
    car = FactoryGirl.create(:car)
  visit '/'

  click_link 'Edit'

  fill_in "Make", :with => "Chevy"
  fill_in "Model", :with => "Camaro"
  fill_in "Year", :with => "1968"
  fill_in "Price", :with => "2400"
  click_button "Edit"
  expect(page).to have_content("Product was successfully updated.")
end
end
