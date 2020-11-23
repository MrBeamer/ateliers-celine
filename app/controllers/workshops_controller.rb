class WorkshopsController < ApplicationController
  def index
    @workshops = policy_scope(Workshop).order(created_at: :desc)
  end

  def show
    @workshop = Workshop.find(params[:id])
    authorize @workshop
  end
end
