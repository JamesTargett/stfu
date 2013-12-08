class Subscription < ActiveRecord::Base
  belongs_to :user
  has_many :payments

  scope :requires_rebill, -> { where("last_payment_date <= :one_month_ago", { one_month_ago: Date.today.advance(months: -1)}) }

  before_create :set_start_date

  validates :start_date,
    presence: true

  private

  def set_start_date
    self.start_date = Date.today
  end

end