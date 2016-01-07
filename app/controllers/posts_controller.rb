class PostsController < ApplicationController

  protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }
  #porque tengo que poner esto? validacion de rails para evitar CSRF attacks

  def index
    @posts = Post.all
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
        sport: params.require(:sport),
        description: params.require(:description),
        url: params.require(:url),
        post_type: params.require(:type)
    }
  end

  def post_find_params
    {
        id: params.require(:id) #id es el que le viene por url
    }
  end

  def post_update_params
    params.slice(:title, :sport, :description, :url, :post_type).permit! #no son obligatorios
  end
end
