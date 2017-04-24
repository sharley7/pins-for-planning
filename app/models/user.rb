class User < ApplicationRecord
  has_many :pins
  has_many :pin_endorsements
  has_many :comments

  has_secure_password

 validates :username, presence: true, length: { maximum: 45 }
 VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
 validates :email, presence: true,
                   format: { with: VALID_EMAIL_REGEX },
                   uniqueness: { case_sensitive: false }
validates :password, presence: true, length: { minimum: 6 }, on: create


 def self.requests
  if User.find_by(admin_request: "submitted").nil?
    'alt'
  else
    list = User.where(admin_request: "submitted")
  end
 end










end
