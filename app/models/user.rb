class User < ApplicationRecord
  has_many :articles
  has_secure_password
  validates :username, presence: true
  
end
