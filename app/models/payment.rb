class Payment < ActiveRecord::Base
  belongs_to :subscription

  before_create :set_paid_at
  #after_create :send_receipt_email

  validates :amount_in_cents,
  presence: true

  validates :paid_at,
  presence: true

end
