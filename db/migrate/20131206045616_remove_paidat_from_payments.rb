class RemovePaidatFromPayments < ActiveRecord::Migration
  def change
    remove_column :payments, :paid_at, :date
  end
end
