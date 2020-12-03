class Workshop < ApplicationRecord
  belongs_to :user
  has_many :subscription_workshops
  has_many :steps
  has_rich_text :workshop_content
  has_one_attached :photo
  has_one_attached :pdf
  has_many :posts
  has_many :reviews
end
