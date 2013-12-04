class CreatePayment < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :subscription_id
      t.integer :amount_in_cents
      t.datetime :paid_at
    end
  end
end
