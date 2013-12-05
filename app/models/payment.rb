class Payment < ActiveRecord::Base
  belongs_to :subscription

  validates :amount_in_cents,
  presence: true

  validates :paid_at,
  presence: true

end
