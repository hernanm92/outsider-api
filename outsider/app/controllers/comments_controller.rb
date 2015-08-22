class CommentsController < ApplicationController

  protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }

  def index
    @comments = Comment.all.where(video: params[:video_id])
    render json: @comments
  end

  def show
    @comment = Comment.find_by!(comment_find_params)
    render json: @comment
  end

  def create
    @comment = Comment.create!(comment_create_params)
    render json: @comment
  end

  def update
    @comment = Comment.find_by!(comment_find_params)
    @comment.update! comment_update_params
    render json: @comment
  end

  def destroy
    @comment = Comment.find_by!(comment_find_params)
    @comment.destroy!
    render json: @comment
  end

  private

  def comment_create_params
    {
      video: params.require(:video),
      owner: params.require(:owner),
      description: params.require(:description)
    }
  end

  def comment_find_params
    {
    	video: params.require(:video_id),
      id: params.require(:id)
    }
  end

  def comment_update_params
  	params.slice(:points).permit!
  end
end
