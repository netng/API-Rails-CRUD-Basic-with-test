require 'rails_helper'

RSpec.describe "Delete a post", type: :request do
    describe 'DELETE /destroy' do
        let(:post) { FactoryBot.create(:post) }

        context "with valid id" do
            before do
                delete "/api/v1/posts/#{post.id}"
            end

            it "return status code 204" do
                expect(response).to have_http_status(204)
            end
        end

        context "with invalid id" do
            before do
                delete "/api/v1/posts/#{100}"
            end
            it "return a unprocessable entity" do
                expect(response).to have_http_status(:unprocessable_entity)
            end
        end

    end
end