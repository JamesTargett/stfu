class RemoveCreditcardfieldsFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :card_info, :string
    remove_column :users, :name_on_card, :string
    remove_column :users, :expiration_month, :integer
    remove_column :users, :expiration_year, :integer
  end
end
