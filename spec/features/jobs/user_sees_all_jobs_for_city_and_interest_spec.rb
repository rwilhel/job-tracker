require 'rails_helper'

describe "User sees a jobs index for cities and interests" do
  xscenario "a user sees all the jobs for a city" do
    job_1 = create(:job)
    job_2 = create(:job)
    job_3 = create(:job)

    visit ('/jobs?location=CityJob')
    expect(page).to have_content("CityJob")
  end
end
