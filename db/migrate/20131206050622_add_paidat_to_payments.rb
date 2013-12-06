class AddPaidatToPayments < ActiveRecord::Migration
  def change
    add_column :payments, :paid_at, :date
  end
end
