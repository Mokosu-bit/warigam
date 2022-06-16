class Event < ApplicationRecord
  include Hashid::Rails
  serialize :results, Array

  has_many :rooms, dependent: :destroy
  has_many :joining_users, through: :rooms, source: :user
  has_one :gamble, dependent: :destroy
  accepts_nested_attributes_for :gamble
  belongs_to :user

  validates :title, presence: true, length: { maximum: 15 }
  validates :mode, presence: true

  enum mode: { equal: 0, unit: 1 }

  scope :under, -> { where("created_at > ?", Time.current-1.hour) }

  def created_by?(user)
    return false unless user

    user_id == user.id
  end
end
