require 'rails_helper'

describe "User edits an existing job" do
  scenario "a user can edit a job" do
    job = create(:job)

    visit edit_job_path(job)
    fill_in "job[title]", with: "Producer"
    click_button "Update Job"

    expect(current_path).to eq("/jobs/#{Job.last.id}")
    expect(page).to have_content("Producer")
    expect(page).to_not have_content("Developer")
  end
end
