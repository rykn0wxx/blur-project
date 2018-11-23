class User < ApplicationRecord
  has_secure_password
  validates :email, :username, presence: true, uniqueness: true
  
  def self.from_token_payload payload
    self.find payload['sub']
  end

  def self.find_by_login usr_parms
    conditions = usr_parms.dup
    login = conditions.to_s
    where(['id = :value OR lower(username) = :value OR lower(email) = :value', {value: login.strip.downcase}]).first
  end
  
end
