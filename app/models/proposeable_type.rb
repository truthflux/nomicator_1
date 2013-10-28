class ProposeableType < ActiveRecord::Base
  attr_accessible :type_name, :interval, :weekday, :voter_role_id,
                  :resolution_type_id, :instant_resolve, :majority,
                  :quorum, :in_effect, :succeeded, :archived, :actionable

end