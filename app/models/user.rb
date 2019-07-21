class User < ApplicationRecord
  validates :name,      presence: true
  validates :email,     presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :password,  presence: true, length: { minimum: 6, maximum: 14}
end
