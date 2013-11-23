class RemoveCharacterVsCharacterFromMatches < ActiveRecord::Migration
  def change
    remove_column :matches, :character_vs_character, :string
  end
end
