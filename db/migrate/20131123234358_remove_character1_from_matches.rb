class RemoveCharacter1FromMatches < ActiveRecord::Migration
  def change
    remove_column :matches, :character1
    remove_column :matches, :character2
  end
end
