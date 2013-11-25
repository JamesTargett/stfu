class Roleplay < ActiveRecord::Base
  belongs_to :match
  belongs_to :character

  validates :message,
  presence: true
  
end
