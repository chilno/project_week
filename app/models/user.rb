class User < ActiveRecord::Base
  has_secure_password
  has_many :items

  has_secure_password
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  PHONE_REGEX = /\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}\z/
  
  validates :first_name, :last_name, :email, :phone, :city, :state, presence: true
  validates :email, uniqueness: {case_sensitive: false}, format: {with: EMAIL_REGEX}
  validates :phone,  format: {with: PHONE_REGEX}

  before_save do
  	self.email.downcase!
  end
end
