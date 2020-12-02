class PostsController < ApplicationController

  def new
    @post = Post.new
    @workshop = Workshop.find(params[:workshop_id])
    @post.workshop = @workshop
    authorize @post
  end

  def create
    @post = Post.new(post_params)
    @workshop = Workshop.find(params[:workshop_id])
    authorize @post
    @post.user = current_user
    @post.workshop = @workshop
    if @post.save
      redirect_to workshop_path(@workshop, anchor: "posts_all")
    else
      render :new
    end
  end

  def index
    @posts = policy_scope(Post).order(created_at: :desc)
  end

  private

  def post_params
    params.require(:post).permit(:title, :photo)
  end
end
