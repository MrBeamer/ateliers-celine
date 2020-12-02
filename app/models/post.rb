class Post < ApplicationRecord
  belongs_to :user
  belongs_to :workshop
  has_one_attached :photo
end
