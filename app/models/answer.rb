class Answer < ActiveRecord::Base
  belongs_to :question #,inverse_of: :questions
end
