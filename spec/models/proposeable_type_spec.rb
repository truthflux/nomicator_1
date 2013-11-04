require 'spec_helper'

describe ProposeableType do

before do

 let (:proposeable_type) { FactoryGirl.create(:proposeable_type) }

end

subject { :proposeable_type }

it { should respond_to(:type_name) }
it { should respond_to(:interval) }
it { should respond_to(:weekday) }
it { should respond_to(:voter_role_id) }
it { should respond_to(:instant_resolve) }
it { should respond_to(:majority) }
it { should respond_to(:quorum) }
it { should respond_to(:in_effect) }
it { should respond_to(:succeeded) }
it { should respond_to(:archived) }
it { should respond_to(:actionable) }
it { should respond_to(:resolution_type_id) }


it { should be_valid }

end
