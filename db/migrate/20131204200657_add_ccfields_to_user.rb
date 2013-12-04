class AddCcfieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :card_info, :string
    add_column :users, :name_on_card, :string
    add_column :users, :expiration_month, :integer
    add_column :users, :expiration_year, :integer
  end
end
