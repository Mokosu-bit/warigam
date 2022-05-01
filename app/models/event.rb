class Event < ApplicationRecord
  validates :title, presence: true
  validates :mode, presence: true

  enum mode: { share: 0, equal: 1, unit: 2 }
end
