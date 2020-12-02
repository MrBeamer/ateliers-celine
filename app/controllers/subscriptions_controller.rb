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
      @subscription.sku = "Three Month Plan"

      @subscription.workshops.each do |workshop|
      workshop.steps.each do |step|
        user_step = UserStep.new
        user_step.user = current_user
        user_step.step = step
        user_step.done = false
        user_step.save
        end
      end

    else
      @subscription.start_date = Date.today
      @subscription.duration = 1
      @subscription.price = 90
      @subscription.sku = "One Month Plan"

      user_step = UserStep.new
      user_step.user = current_user
      @subscription.workshops[0].steps.each do |step|
        user_step = UserStep.new
        user_step.user = current_user
        user_step.step = step
        user_step.done = false
        user_step.save
      end
    end

    @subscription.save



    redirect_to new_subscription_order_path(@subscription)

  end

 

  def profile
    @user = current_user
    @subscription = @user.subscriptions
    authorize @subscription

    @workshops = @user.subscriptions[0].workshops if !@user.subscriptions.empty?
    
  end

  private

  def subscription_params
    params.require(:subscription).permit(:start_date, :end_date, :duration, :price, :name, :sku, workshop_ids: [])
  end


end
