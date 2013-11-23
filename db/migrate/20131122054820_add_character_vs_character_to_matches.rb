# remove this column

class AddCharacterVsCharacterToMatches < ActiveRecord::Migration
  def change
    add_column :matches, :character_vs_character, :string
  end
end
