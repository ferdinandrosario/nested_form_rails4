require 'rails_helper'

RSpec.describe Survey, :type => :model do

  it { should have_many(:questions).dependent(:destroy) }
  it { should accept_nested_attributes_for(:questions).allow_destroy(true) }
  # it { should accept_nested_attributes_for(:questions).limit(4) }
  # it { should accept_nested_attributes_for(:questions).update_only(true) }
end