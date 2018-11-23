# == Schema Information
#
# Table name: users
#
#  admin           :boolean          default(FALSE)
#  email           :string(255)      default(""), not null
#  password_digest :string(255)      default(""), not null
#  username        :string(255)      default(""), not null
#  uuid            :string(36)       not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_users_on_email     (email) UNIQUE
#  index_users_on_username  (username) UNIQUE
#

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
