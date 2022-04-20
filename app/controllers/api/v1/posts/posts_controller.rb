class Api::V1::Posts::PostsController < ApplicationController

    # GET /api/v1/posts
    def index
        @posts = Post.all
        render json: @posts
    end

    # POST /api/v1/posts
    def create
        @post = Post.create(posts_params)

        if @post.valid?
            render json: @post, status: :created
        else
            render json: @post.errors, status: :unprocessable_entity
        end
    end

    private
    def posts_params
        params.require(:post).permit(:title, :content)
    end
end