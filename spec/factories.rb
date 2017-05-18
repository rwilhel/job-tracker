FactoryGirl.define do
  factory :company do
    name "ESPN"
  end

  factory :job do
    title "Developer"
    description "JobDescription"
    level_of_interest 50
    city "CityJob"
    company
  end
end
