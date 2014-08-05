require 'rails_helper'

RSpec.describe Question, :type => :model do
it { should belong_to(:survey) }
it { should have_many(:answers).dependent(:destroy) }
it { should accept_nested_attributes_for(:answers).allow_destroy(true) }
it { should accept_nested_attributes_for(:answers).limit(4) }
it { should accept_nested_attributes_for(:answers).update_only(true) }
end