require 'rails_helper'

describe "User sees a specific category" do
  scenario "a user sees all jobs associated with the category" do
    category = create(:category_with_jobs)

    visit category_path(category)

    expect(page).to have_content(category.title)
    expect(page).to have_content("Jobs")

    category.jobs.each do |job|
      expect(page).to have_link job.title, company_job_path(job.company, job)
    end
  end
end
