class RemovePaidFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :paid, :boolean
  end
end
