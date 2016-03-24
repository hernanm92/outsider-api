class PostsController < ApplicationController

  def index
    @posts = Post.all.order(date: :desc)
    render json: @posts
  end

  def show
    @post = Post.find_by!(post_find_params)
    render json: @post
  end

  def create
    @post = Post.create!(post_create_params)
    render json: @post
  end

  def update
    @post = Post.find_by!(post_find_params)
    @post.update! post_update_params
    render json: @post
  end

  def destroy
    @post = Post.find_by!(post_find_params)
    @post.destroy!
    render json: @post
  end

  private

  def post_create_params
    {
        title: params.require(:title),
        description: params.require(:description),
        sport: params.require(:sport),
        url: params.require(:url),
        post_type: params.require(:type),
        date: params[:date]
    }
  end

  def post_find_params
    {
        id: params.require(:id) #id es el que le viene por url
    }
  end

  def post_update_params
    params.slice(:title, :sport, :description, :url, :post_type, :date).permit! #no son obligatorios
  end
end
