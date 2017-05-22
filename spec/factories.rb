FactoryGirl.define do

  sequence(:name) { |n| "ESPN #{n}" }
  factory :company do
    name
  end

  factory :job do
    title "Developer"
    description "JobDescription"
    level_of_interest 50
    city "CityJob"
    company
    category
  end

  # sequence(:title) { |n| "Finance #{n}" }
  factory :category do
    title "Finance"

    factory :category_with_jobs do
      transient do
        jobs_count 3
      end

      after(:create) do |category, evaluator|
        create_list(:job, evaluator.jobs_count, category: category)
      end
    end
  end

  sequence(:content) { |n| "Here is my comment #{n}" }
  factory :comment do
    content
  end

  factory :contact do
    full_name "Toby Tee"
    position "Hiring Manager"
    email "toby@email.com"
    company nil
  end

end
