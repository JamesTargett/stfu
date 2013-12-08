class RemoveCardinfoFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :card_info, :string
  end
end
