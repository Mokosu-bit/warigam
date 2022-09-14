class Event < ApplicationRecord
  include Hashid::Rails
  serialize :results, Array

  validates :title, presence: true, length: { maximum: 15 }
  validates :mode, presence: true
  validates :counts, presence: true, inclusion: { in: 0..1 }

  has_many :rooms, dependent: :destroy
  has_many :joining_users, through: :rooms, source: :user
  has_one :gamble, dependent: :destroy
  accepts_nested_attributes_for :gamble
  belongs_to :user

  enum mode: { equal: 0, unit: 1 }

  scope :under, -> { where('created_at > ?', Time.current - 1.hour) }

  def created_by?(user)
    return false unless user

    user_id == user.id
  end

  def equals(joined_users)
    update(counts: 1)
    update(results: joined_users.sample(gamble.people_number))
    er = results
    amount = gamble.total_amount / gamble.people_number
    er.each do |event|
      event.rooms.last.update(payment: amount)
    end
  end

  def units(joined_users)
    update(counts: 1)
    pre_unit = []
    unit_s = gamble.total_amount.to_s.chars
    unit_i = unit_s.map(&:to_i).reverse
    pre_unit << unit_i.map.with_index { |unit, index| unit * (10**index) }
    update(results: joined_users.sample(unit_s.length))
    er = results
    er.each_with_index do |event, index|
      event.rooms.last.update(payment: pre_unit[0][index])
    end
  end
end
