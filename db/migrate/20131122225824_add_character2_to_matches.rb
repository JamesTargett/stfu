class AddCharacter2ToMatches < ActiveRecord::Migration
  def change
    add_column :matches, :character2, :string
  end
end
