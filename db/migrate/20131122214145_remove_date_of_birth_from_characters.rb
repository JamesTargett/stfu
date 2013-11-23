class RemoveDateOfBirthFromCharacters < ActiveRecord::Migration
  def change
    remove_column :characters, :date_of_birth, :string
  end
end
