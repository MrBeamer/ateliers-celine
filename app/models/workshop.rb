class Workshop < ApplicationRecord
  belongs_to :user
  has_many :subscription_workshops
  has_rich_text :workshop_content
end
