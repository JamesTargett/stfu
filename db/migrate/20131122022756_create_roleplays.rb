class CreateRoleplays < ActiveRecord::Migration
  def change
    create_table :roleplays do |t|
      t.string :message
      t.references :match, index: true
      t.references :character, index: true

      t.timestamps
    end
  end
end
