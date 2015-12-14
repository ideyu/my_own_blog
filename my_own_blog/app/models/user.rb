class User < ActiveRecord::Base
  before_save {self.email = email.downcase}
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  has_secure_password
  validates :password, length: {minimum: 6}
end
