class PostController < ApplicationController

    
    def index
        @posts = Post.all
    end
    
    def create
        @post = Post.new
        @post.title = params[:usertitle]
        @post.content = params[:usercontent]
        @post.save
        redirect_to "/"
    end
    
end
