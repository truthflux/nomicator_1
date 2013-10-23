require 'spec_helper'

describe "ActivityLog pages" do
  subject { page }

  let(:user) { FactoryGirl.create(:user) }
  before { sign_in user}

  describe "activity_log creation"  do
    before { visit root_path }

    describe "with invalid information" do

      it "should not create a log" do
        expect { click_button "Post"}.not_to change(ActivityLog, :count)
      end

      describe "error messages" do
        before { click_button "Post" }
        it { should have_content 'error' }
      end
    end

    describe "with valid information" do

      before { fill_in 'activity_log_content', with: 'lorem ipsum' }
      it "should create a log" do
        expect { click_button "Post" }.to change(ActivityLog, :count).by(1)
      end

    end

  end

end
