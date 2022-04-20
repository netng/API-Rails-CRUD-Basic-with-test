require 'rails_helper'

RSpec.describe 'Add Post', type: :request do
    describe "POST /create" do
        context "with valid parameters" do
            let!(:my_post) { FactoryBot.create(:post) }

            before do
                post "/api/v1/posts", params: {
                    post: {
                        title: my_post.title,
                        content: my_post.content
                    }
                }
            end

            it "return the title" do
                expect(json["title"]).to eq(my_post.title)
            end

            it "return the content" do
                expect(json["content"]).to eq(my_post.content)
            end

            it "return a created status" do
                expect(response).to have_http_status(:created)
            end
        end

        context "with invalid parameters" do
            before do
                post "/api/v1/posts", params: {
                    post: {
                        title: "",
                        content: ""
                    }
                }
            end

            it "return a unprocessable entity status" do
                expect(response).to have_http_status(:unprocessable_entity)
            end
        end
    end
end