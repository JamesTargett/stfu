class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.references :character1, index: true
      t.references :character2, index: true

      t.timestamps
    end
  end
end
