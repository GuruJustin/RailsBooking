class PostsController < ApplicationController
    def index
        @posts = Post.all.order('created_at DESC')
    end
   
    def new
    end

    def create
        @post = Post.new(def_params)
        @post.save

        redirect_to @post
    end

    def show
        @post = Post.find(params[:id])
    end

    private
        def def_params
            params.require(:post).permit(:title, :body)
        end
end
