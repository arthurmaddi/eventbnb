class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :spot

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :status, presence: true
  # , inclusion: { in: %w(pending confirmed declined) }
end
