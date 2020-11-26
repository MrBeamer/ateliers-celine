class SubscriptionsController < ApplicationController

  def index
    @subscriptions = policy_scope(Subscription).order(created_at: :desc)
    @workshops = policy_scope(Workshop).order(created_at: :desc)
    @subscription = Subscription.new()
  end

  def show
    @subscription = Subscription.find(params[:id])
    authorize @subscription
  end

  def new
    @subscription = Subscription.new
     authorize @subscription
  end

  def create
    @subscription = Subscription.new(subscription_params)
    authorize @subscription
    @subscription.user = current_user
    @subscription.save
    if @subscription.workshops.count == 3
      @subscription.start_date = Date.today
      @subscription.duration = 3
      # TODO: add end_date
      @subscription.price = 185
    else
      @subscription.start_date = Date.today
      @subscription.duration = 1
      @subscription.price = 90
    end
    @subscription.save
    redirect_to subscription_path(@subscription)
  end

  private

  def subscription_params
    params.require(:subscription).permit(:start_date, :end_date, :duration, :price, :name, workshop_ids: [])
  end
end
