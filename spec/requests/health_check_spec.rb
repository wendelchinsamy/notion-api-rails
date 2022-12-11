# frozen_string_literal: true

require "rails_helper"

RSpec.describe("HealthCheck", type: :request) do
  describe "GET /index" do
    before do
      get "/health_check"
    end

    it "returns healthy message" do
      parsed_body = JSON.parse(response.body)

      expect(parsed_body).to(eq({ "message" => "healthy" }))
    end

    it "returns status code 200" do
      expect(response).to(have_http_status(:success))
    end
  end
end
