class User < ActiveRecord::Base

  has_many :characters
  has_many :matches, through: :character
  has_many :roleplays, through: :character
  has_secure_password

  validates :email,
    presence: true,
    uniqueness: true,
    email: true

  validates :password,
    presence: true,
    length: { in: 6..20 }, on: :create

  def owns_character?(character)
    characters.include?(character)
  end

end
