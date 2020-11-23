class DashboardsController < ApplicationController
  def index
    # @dashboards = policy_scope(Dashboard).order(created_at: :desc)
    # @user = policy_scope(User).order(created_at: :desc)
    @user = current_user
  end
end
