class User < ApplicationRecord
  has_secure_password
  has_one :location, dependent: :destroy
  has_many :assigned_producer, class_name: 'Session', foreign_key: 'producer', dependent: :destroy
  has_many :assigned_consumer, class_name: 'Session', foreign_key: 'consumer', dependent: :destroy
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true, uniqueness: true
end
