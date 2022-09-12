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
    self.update(counts: 1)
    self.update(results: joined_users.sample(self.gamble.people_number))
    er = self.results
    amount = self.gamble.total_amount / self.gamble.people_number
    er.each do |event|
      event.rooms.last.update(payment: amount)
    end
  end
end
