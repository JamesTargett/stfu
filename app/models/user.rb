class User < ActiveRecord::Base

  has_many :characters
  has_many :matches, through: :character
  has_many :roleplays, through: :character
  has_one :subscription
  has_many :payments, through: :subscription
  has_secure_password

  validates :email,
    presence: true,
    uniqueness: true,
    email: true

  validates :password,
    presence: true,
    length: { in: 6..20 }, on: :create

  validates :card_info,
    presence: true, if: :subscribed?

  validates :name_on_card,
    presence: true, if: :subscribed?

  validates :expiration_month,
    presence: true, if: :subscribed?

  validates :expiration_year,
    presence: true, if: :subscribed?

private

  def owns_character?(character)
    characters.include?(character)
  end

end
