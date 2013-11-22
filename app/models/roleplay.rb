class Roleplay < ActiveRecord::Base
  belongs_to :match
  belongs_to :character
end
