require 'rails_helper'

RSpec.feature "Product manage", type: :feature do
  scenario "User creates a new product" do
    visit new_product_path

    fill_in "Name", with: "New product"
    fill_in "Price", with: "99.99"
    fill_in "Description", with: "Some good offer"
    click_button "Create Product"

    expect(page).to have_text("Product was successfully created")
    expect(page).to have_text("New product")
  end
end
