class PostController < ApplicationController
    def home
        @post = Post.new
    end
    
    def index
    end
    
    def create
        @post = Post.new
        @post.title = params[:name_info]
        @post.content = params[:price_info]
        
        redirect_to "/"
    end
    
end
