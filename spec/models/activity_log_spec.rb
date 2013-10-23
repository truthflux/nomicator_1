require 'spec_helper'

describe ActivityLog do
  let (:user) { FactoryGirl.create(:user) }
  before do
    @activity_log = user.activity_logs.build(content: "Lorem ipsum")
  end
  subject { @activity_log }

  it { should respond_to(:content) }
  it { should respond_to(:user_id) }
  it { should respond_to(:user) }
  its(:user) { should == user }

  it {should be_valid }



  describe "accessible attributes" do
    it "should not allow access to user_id" do
      expect do
        ActivityLog.new(user_id: user.id)
      end.to raise_error(ActiveModel::MassAssignmentSecurity::Error)
    end
  end


  describe "when user_id is not present" do
    before { @activity_log.user_id = nil }
    it { should_not be_valid }
  end

  describe "with blank content" do
    before { @activity_log.content = " " }
    it { should_not be_valid }
  end

  describe "with message that is too long" do
    before { @activity_log.content = "q" * 255 }
    it { should_not be_valid }
  end
end