class ActivityLog < ActiveRecord::Base
  attr_accessible :content
  belongs_to :user

  validates   :user_id, presence: true
  validates   :content, presence: true, length: { maximum: 254 }

  default_scope order: 'activity_logs.created_at DESC'
end
