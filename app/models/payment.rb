class Payment < ActiveRecord::Base
  belongs_to :subscription

  before_create :set_paid_at
  #after_create :send_receipt_email

  validates :amount_in_cents,
  presence: true

  validates :paid_at,
  presence: true

private

  def set_paid_at
    self.paid_at = Date.today
  end

end
