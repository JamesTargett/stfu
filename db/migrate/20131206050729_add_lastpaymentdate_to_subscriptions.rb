class AddLastpaymentdateToSubscriptions < ActiveRecord::Migration
  def change
    add_column :subscriptions, :last_payment_date, :date
  end
end
