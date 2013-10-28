require 'spec_helper'

describe Proposeable do
    let (:proposeable) { FactoryGirl.create(:proposeable) }

    subject { proposeable }

  subject { proposeable }

  it { should respond_to(:title) }
  it { should respond_to(:content) }
  it { should respond_to(:resolve_time) }
  it { should respond_to(:index_number) }
  it { should respond_to(:version_number) }

  it { should respond_to(:ruleset_id) }
  it { should respond_to(:proposeable_type_id) }
  it { should respond_to(:successor_id) }
  it { should respond_to(:proposer_id) }
  it { should respond_to(:owner_id) }

  it { should be_valid }

end
