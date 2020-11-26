class SubscriptionsController < ApplicationController

  def index
    @subscriptions = policy_scope(Subscription).order(created_at: :desc)
    @workshops = policy_scope(Workshop).order(created_at: :desc)
    @subscription = Subscription.new()
  end

  def new
    @subscription = Subscription.new
     authorize @subscription
  end

  def create
    @subscription = Subscription.new(subscription_params)
    authorize @subscription
    @subscription.user = current_user
    # @subscription.start_date = Date.now
      if @subscription.save!
      # redirect_to @game
      end
  end

  private

  def subscription_params
    params.require(:subscription).permit(:start_date, :end_date, :duration, :price, workshop_ids: [])
  end
end
