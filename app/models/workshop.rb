class Workshop < ApplicationRecord
  belongs_to :user
  has_many :subscription_workshops
end
