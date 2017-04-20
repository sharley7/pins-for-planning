class User < ApplicationRecord
  has_many :pins
  has_many :pin_endorsements


  has_secure_password

 validates :username, presence: true, length: { maximum: 15 }
 VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
 validates :email, presence: true,
                   format: { with: VALID_EMAIL_REGEX },
                   uniqueness: { case_sensitive: false }
 validates :password, presence: true, length: { minimum: 6 }

 def role?
   self.role = role.to_sym
 end



end
