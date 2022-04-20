require 'rails_helper'

RSpec.describe "Show Post", type: :request do
    describe "GET /posts/:id" do
        let!(:post) { FactoryBot.create(:post) }

        context "with valid id" do
            before do
                get "/api/v1/posts/#{post.id}"
            end

            it "return status code 200" do
                expect(response).to have_http_status(:success)
            end
        end

        context "with valid id" do
            before do
                get "/api/v1/posts/#{nil}"
            end

            it "return status code 404" do
                expect(response).to have_http_status(:not_found)
            end
            
        end
    end
end