require 'spec_helper'

describe Proposeable do
  let (:user) { FactoryGirl.create(:user) }

  before do
    @proposeable = user.proposeables.build( title: "Lorem ipsum", content: "Lorem ipsum",
                                            ruleset_id: 1, proposeable_type_id: 1)
  end

  #TODO proposeable factory
  #TODO add in use of proposeable_type factory

  subject { @proposeable }

  it { should respond_to(:title) }
  it { should respond_to(:content) }
  it { should respond_to(:resolve_time) }
  it { should respond_to(:version_number) }
  it { should respond_to(:ruleset_id) }
  it { should respond_to(:proposeable_type_id) }
  it { should respond_to(:successor_id) }
  it { should respond_to(:proposer_id) }
  it { should respond_to(:resolver_id) }

  it { should be_valid }



end
