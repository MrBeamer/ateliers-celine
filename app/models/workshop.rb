class Workshop < ApplicationRecord
  belongs_to :user
  has_many :subscription_workshops
  has_rich_text :workshop_content
  has_one_attached :photo
  has_many_attached :pdfs
end
