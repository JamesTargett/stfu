class Character < ActiveRecord::Base
  belongs_to :user
  has_many :roleplays
  has_many :matches

  validates :name,
    presence: true

  validates :age,
    presence: true

  validates :height,
    presence: true

  validates :weight,
    presence: true

  validates :wrestling_style,
    presence: true

    validates :finisher,
      presence: true

end
