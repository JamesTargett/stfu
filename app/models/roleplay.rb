class Roleplay < ActiveRecord::Base
  belongs_to :match
  belongs_to :character

  validates :character,
  presence: true

  validates :message,
  presence: true
  
end
