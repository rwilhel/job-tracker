require 'rails_helper'

describe "User sees analytics" do
  xscenario "a user sees a job count by level of interest" do
    company = create(:company)
    job = create(:job)

    visit dashboard_path
    expect(page).to have_content "Job Tracker Dashboard"
  end
end
