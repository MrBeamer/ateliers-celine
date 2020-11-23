class Review < ApplicationRecord
  belongs_to :subscription
  validates :rating, :comment, presence: true
  validates :rating, inclusion: { in: 1..5 }
end
