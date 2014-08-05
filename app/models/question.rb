class Question < ActiveRecord::Base
  belongs_to :survey, inverse_of: :questions
  has_many :answers, :dependent => :destroy, inverse_of: :questions
  accepts_nested_attributes_for :answers, :reject_if => lambda { |a| a[:answers].blank? }, :allow_destroy => true,:limit => 2,:update_only => true
end
