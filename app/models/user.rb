class User < ActiveRecord::Base

  has_many :characters
  has_many :matches, through: :character
  has_many :roleplays, through: :character
  has_secure_password

  validates :email,
    presence: true

  validates :username,
    presence: true

  validates :password,
    length: { in: 6..20 }, on: :create

end
