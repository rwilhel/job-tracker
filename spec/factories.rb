FactoryGirl.define do

  sequence(:name) { |n| "ESPN #{n}" }
  factory :company do
    name

    factory :company_with_jobs do
      after(:create) do |company|
        company.jobs = create_list(:category_with_jobs, 10)
      end
    end
  end

  factory :job do
    sequence(:title) { |n| "Developer #{n}" }
    description "JobDescription"
    level_of_interest 50
    city "CityJob"
    company
    category
  end

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
