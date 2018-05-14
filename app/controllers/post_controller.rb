class PostController < ApplicationController
    def home
        @post = Post.new
    end
    
    def index
        @post = Post.all
    end
    
    def create
        @post = Post.new
        @post.title = params[:name_info]
        @post.content = params[:price_info]
        @post.save
        redirect_to "/"
    end
    
end
