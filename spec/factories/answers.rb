# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :answer do
    # question_id 1
    answers "MyString"
  end

  # factory :answer_for_question, class: Answer do
  #   answers "answer for the quesrtion"
  # end
end
