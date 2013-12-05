class Payment < ActiveRecord::Base
  belongs_to :subscription

  validates: :amount,
  presence: true

  validates: :paid_at,
  presence: true

end
