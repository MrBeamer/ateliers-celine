class SubscriptionPolicy < ApplicationPolicy
  def new
    return true
  end

  def create
    return true
  end
end
