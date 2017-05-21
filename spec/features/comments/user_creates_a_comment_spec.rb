require 'rails_helper'

describe "User creates a comment" do
  scenario "a user creates a new comment for a job" do
    job = create(:job)

    visit company_job_path(job.company, job)
e
    fill_in "comment[content]", with: "Here is a single comment"
    click_on "Create Comment"

    expect(current_path).to eq company_job_path(job.company, job)
    expect(page).to have_content("Here is a single comment")
  end
end
