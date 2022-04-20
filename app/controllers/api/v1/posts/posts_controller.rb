class Api::V1::Posts::PostsController < ApplicationController
    before_action :set_post, only: [:destroy, :show]

    # GET /api/v1/posts
    def index
        @posts = Post.all
        render json: @posts
    end

    # GET /api/v1/posts/:id
    def show
        if @post.nil?
            render status: :not_found
        else
            render json: @post, status: :ok
        end
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

    # DELETE /api/v1/posts/:id
    def destroy
        if @post.nil?
            render status: :unprocessable_entity
        else
            @post.destroy
            render status: :no_content
        end
    end

    private

    def posts_params
        params.require(:post).permit(:title, :content)
    end

    def set_post
        @post = Post.find_by_id(params[:id])
    end
end