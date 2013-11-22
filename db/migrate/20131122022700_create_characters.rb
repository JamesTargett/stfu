class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :date_of_birth
      t.string :height
      t.string :weight
      t.string :wrestling_style
      t.string :finisher
      t.references :user, index: true

      t.timestamps
    end
  end
end
