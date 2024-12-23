# app/controllers/posts_controller.rb
class PostsController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]
    before_action :set_post, only: [:show, :edit, :update, :destroy]
    before_action :authorize_post, only: [:edit, :update, :destroy]
  
    def index
      @posts = Post.all.order(created_at: :desc)
    end
  
    def create
      @post = current_user.posts.build(post_params)
      if @post.save
        redirect_to @post, notice: 'Post criado com sucesso.'
      else
        render :new
      end
    end
  
    # Outros métodos CRUD...
  end