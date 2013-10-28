class Proposeable < ActiveRecord::Base
  attr_accessible :title, :content, :ruleset_id, :proposeable_type_id
  belongs_to :proposer, class_name: "User",
             foreign_key: 'proposer_id'
  belongs_to :owner, class_name: "User",
             foreign_key: 'resolver_id'

  has_many :successors, class_name: "Proposeable",
           foreign_key: "successor_id"

  belongs_to :predecessor, class_name: "Proposeable"

  before_validation :check_index_number

  validates   :title, presence: true, length: { maximum: 100 }
  validates   :content, presence: true, length: { maximum: 500 }
  validates   :version_number, presence: true

  validates   :ruleset_id, presence: true
  validates   :proposeable_type_id, presence:  true
  validates   :proposer_id, presence: true

  private

    def check_index_number

      #Add version number if missing
      if self.version_number.nil?
        if self.predecessor.nil?
          self.version_number = 1
        else
          self.version_number = predecessor.version_number + 1
        end
      end
    end


end
