require 'rails_helper'

describe "User sees a specific job" do
  scenario "a user sees a job for a specific company" do
    job = create(:job)

    visit company_job_path(job.company, job)

    expect(page).to have_content(job.company.name)
    expect(page).to have_content(job.category.title)
    expect(page).to have_content(job.title)
    expect(page).to have_content(job.city)
    expect(page).to have_content(job.level_of_interest)
  end
end
