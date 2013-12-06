class AddLastpaymentdateToPayments < ActiveRecord::Migration
  def change
    add_column :payments, :last_payment_date, :date
  end
end
