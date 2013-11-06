class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation
  has_many :activity_logs, dependent: :destroy
  has_many :proposeables, class_name: "Proposeable", inverse_of: :proposer, foreign_key: 'proposer_id'
  has_many :actionables, class_name: "Proposeable", inverse_of: :owner, foreign_key: 'resolver_id'


  before_save { self.email = email.downcase }
  before_create :create_remember_token
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true , format: { with: VALID_EMAIL_REGEX } ,
            uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, length: { minimum: 6 }

  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  def feed
    #TODO update for other users's log
    ActivityLog.where("user_id = ?", id)


  end

  private

    def create_remember_token
      self.remember_token = User.encrypt(User.new_remember_token)
    end
end
