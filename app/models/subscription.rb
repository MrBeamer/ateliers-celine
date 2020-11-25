class Subscription < ApplicationRecord
  belongs_to :user
  has_many :subscription_workshops
  has_many :workshops, through: :subscription_workshops
  has_many :reviews
end
