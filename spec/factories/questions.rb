# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question do
    # survey_id 1
    content "MyText"
    after(:create) do |question|
      question.answers << FactoryGirl.build(:answer, :question => question)
    end
  end
end
