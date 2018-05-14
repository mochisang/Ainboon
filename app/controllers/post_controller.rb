class PostController < ApplicationController
    def home
        @post = Post.new
    end
    
    def index
        @post = Post.all
    end
    
    def create
        @post = Post.new
        @post.title = params[:title]
        @post.content = params[:content]
        @post.save
        redirect_to "/"
    end
    
end
