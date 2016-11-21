class Session < ApplicationRecord
  belongs_to :consumer, class_name: 'User'
  belongs_to :producer, class_name: 'User'
  validates :approval, inclusion: { in: [true, false] }
  validates :consumer, presence: true
  validates :producer, presence: true
end
