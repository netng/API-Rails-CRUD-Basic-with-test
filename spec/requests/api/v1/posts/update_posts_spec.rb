require 'rails_helper'

RSpec.describe "Update post", type: :request do
    describe "PUT /posts/:id" do
        let(:post) { FactoryBot.create(:post) }

        context "with valid id" do
            before do
                put "/api/v1/posts/#{post.id}", params: {
                    post: {
                        title: "updated title",
                        content: "updated content" 
                    }
                }
            end

            it "return the updated title" do
                expect(json["title"]).to eq("updated title")
            end

            it "return the updated content" do
                expect(json["content"]).to eq("updated content")
            end

            it "return status 200" do
                expect(response).to have_http_status(:ok)
            end
        end

        context "with invalid id" do
            before do
                put "/api/v1/posts/#{123131431}", params: {
                    post: {
                        title: "title",
                        content: "content"
                    }
                }
            end

            it "return content not found" do
                expect(json["message"]).to eq("content not found")
            end



        end
    end
end