class Session < ApplicationRecord
  belongs_to :consumer, class_name: 'User'
  belongs_to :producer, class_name: 'User'
  validates :approval, presence: true
end
