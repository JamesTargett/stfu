class CreateSubscription < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.integer :user_id
      t.date :start_date
      t.date :cancel_date
    end
  end
end
