class AddCharacter1ToMatches < ActiveRecord::Migration
  def change
    add_column :matches, :character1, :string
  end
end
