class Api::V1::Posts::PostsController < ApplicationController

    # GET /api/v1/posts
    def index
        @posts = Post.all
        render json: @posts
    end
end