class RemoveLastpaymentdateFromPayments < ActiveRecord::Migration
  def change
    remove_column :payments, :last_payment_date, :date
  end
end
