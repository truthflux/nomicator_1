class Proposeable < ActiveRecord::Base
  attr_accessible :title, :content
  belongs_to :proposer, :class_name => "User",
             :foreign_key => 'proposer_id'
  belongs_to :owner, :class_name => "User",
             :foreign_key => 'owner_id'

  validates   :title, presence: true, length: { maximum: 100 }
  validates   :content, presence: true, length: { maximum: 500 }
  validates   :index_number, presence: true
  validates   :version_number, presence: true

  validates   :ruleset_id, presence: true
  validates   :proposeable_type_id, presence:  true
  validates   :proposer_id, presence: true
  validates   :owner_id, presence: true

end
