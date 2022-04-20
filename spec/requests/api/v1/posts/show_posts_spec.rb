require 'rails_helper'

RSpec.describe "Show Post", type: :request do
    describe "GET /posts/:id" do
        context "with valid id" do
            let!(:post) { FactoryBot.create(:post) }

            before do
                get "/api/v1/posts/#{post.id}"
            end

            it "return status code 200" do
                expect(response).to have_http_status(:success)
            end
        end

        context "with invalid id" do
            before do
                get "/api/v1/posts/#{010011100}"
            end

            it "return content not found" do
                expect(json["message"]).to eq("content not found")
            end

            it "return status code 404" do
                expect(response).to have_http_status(:not_found)
            end
            
        end
    end
end