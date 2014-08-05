require 'rails_helper'

describe SurveysController do
  # before(:each){
  #   # controller.stub(:check_listener_module).and_return(true)
  # }
  describe "#Index" do
    it "" do
      surveys1, surveys2 = Survey.create!, Survey.create!
      get :index
      expect(assigns(:surveys)).to match_array([surveys1, surveys2])
    end
  end

  describe "#Create" do
    it "Should create survey with question and answers" do
     post :create,{"survey"=>{"name"=>"test quest 1", "is_active"=>"1", "questions_attributes"=>{"0"=>{"content"=>"first question", "_destroy"=>"0", "answers_attributes"=>{"0"=>{"answers"=>"one", "_destroy"=>"0"}, "1"=>{"answers"=>"two", "_destroy"=>"0"}, "2"=>{"answers"=>"three", "_destroy"=>"0"}, "3"=>{"answers"=>"four", "_destroy"=>"0"}}}}}}
     expect(Survey.last.name).to eq("test quest 1")
     expect(flash[:notice]).to eq "Survey was successfully created."
    end
  end

  describe "#Update" do
    it "should update with question and answers" do
     @survey = FactoryGirl.create(:survey)
     post :update,{"survey"=>{"name"=>"test quest 1 updated", "is_active"=>"1", "questions_attributes"=>{"0"=>{"content"=>"first question", "_destroy"=>"0", "answers_attributes"=>{"0"=>{"answers"=>"one", "_destroy"=>"0"}, "1"=>{"answers"=>"two", "_destroy"=>"0"}, "2"=>{"answers"=>"three", "_destroy"=>"0"}, "3"=>{"answers"=>"four", "_destroy"=>"0"}}}}},id: @survey.id}
     expect(Survey.last.name).to eq("test quest 1 updated")
     expect(flash[:notice]).to eq "Survey was successfully updated."
    end
  end
end