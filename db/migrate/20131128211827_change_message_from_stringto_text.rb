class ChangeMessageFromStringtoText < ActiveRecord::Migration
  def change
    change_column :roleplays, :message, :text
  end
end
