class ProposeableType < ActiveRecord::Base
  attr_accessible :type_name, :interval, :weekday, :voter_role_id,
                  :instant_resolve, :majority,
                  :quorum, :in_effect, :succeeded, :archived, :actionable, :resolution_type_id

  validates       :type_name,     presence: true
  validates       :interval,      presence: true
  validates       :weekday,       presence: true,   numericality: { only_integer: true, less_than: 8, greater_than: 0}
  validates       :voter_role_id,  presence: true

end