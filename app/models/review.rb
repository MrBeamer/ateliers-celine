class Review < ApplicationRecord
  belongs_to :user
  belongs_to :workshop
  validates :rating, :comment, presence: true
  validates :rating, inclusion: { in: 1..5 }
end
