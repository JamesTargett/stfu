class Subscription < ActiveRecord::Base
  belongs_to :user
  has_many :payments

  before_create :set_start_date

  validates :start_date,
    presence: true

  private

  def set_start_date
    self.start_date = Date.today
  end

end