require 'rails_helper'

describe "User create a contact" do
  scenario "a user creates a new contact for a company" do
    company = create(:company)

    visit company_path(company)

    fill_in "contact[full_name]", with: "Toby Tee"
    fill_in "contact[position]", with: "Hiring Manager"
    fill_in "contact[email]", with: "toby@email.com"
    click_on "Create Contact"

    expect(current_path).to eq company_path(company)
    expect(page).to have_content("Full Name: Toby Tee")
    expect(page).to have_content("Position: Hiring Manager")
    expect(page).to have_content("Email: toby@email.com")
  end
end
