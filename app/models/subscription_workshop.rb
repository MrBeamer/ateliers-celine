class SubscriptionWorkshop < ApplicationRecord
  belongs_to :subscription
  belongs_to :workshop
end
