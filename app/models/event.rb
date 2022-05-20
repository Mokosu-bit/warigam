class Event < ApplicationRecord
  has_many :rooms, dependent: :destroy
  has_many :joining_users, through: :rooms, source: :user
  has_one :gamble
  belongs_to :user

  validates :title, presence: true
  validates :mode, presence: true

  enum mode: { share: 0, equal: 1, unit: 2 }

  def created_by?(user)
    return false unless user

    user_id == user.id
  end
end
