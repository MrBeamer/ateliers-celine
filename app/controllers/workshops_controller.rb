class WorkshopsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :show, :index ]

  def index
    @workshops = policy_scope(Workshop).order(created_at: :desc)
  end

  def show
    @workshop = Workshop.find(params[:id])
    authorize @workshop
  end

  def update
    @workshop = Workshop.find(params[:id])
    authorize @workshop
    @workshop.update(workshop_content_params)
    @workshop.save
  end

  def instructions
    @workshop = Workshop.find(params[:id])
    authorize @workshop
  end

  def mark_as_done
    @step = UserStep.where(:user_id => current_user.id, :step_id => params[:step_id])[0]
    @step.done = true
    @step.save
    authorize @step
  end

  private

  def workshop_content_params
    params.require(:workshop).permit(:workshop_content, :pdf)
  end
end
