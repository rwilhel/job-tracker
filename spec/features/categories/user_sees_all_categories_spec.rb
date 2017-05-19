require 'rails_helper'

describe "User sees all categories" do
  scenario "a user sees all the categories" do
    category = create(:category)
    category_two = create(:category, title: "Marketing")

    visit categories_path

    expect(page).to have_content("Finance")
    expect(page).to have_content("Marketing")
  end
end
