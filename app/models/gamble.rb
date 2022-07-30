class Gamble < ApplicationRecord
  belongs_to :event
  has_one :user_payment, dependent: :destroy

  validates :total_amount, presence: true,
                           numericality: { greater_than_or_equal_to: 2, less_than_or_equal_to: 99_999 }
  validates :people_number, presence: true, numericality: { greater_than_or_equal_to: 1 }, if: :pn?

  def pn?
    return true if event.mode == 'equal'

    false
  end
end
