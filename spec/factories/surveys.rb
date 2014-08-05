# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :survey do
    name "test survey"
    is_active true
    after(:create) do |survey|
      survey.questions << FactoryGirl.build(:question, :survey => survey)
    end
  end
end

