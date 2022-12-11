# frozen_string_literal: true

class HealthCheckController < ApplicationController
  def index
    body = { message: "healthy" }

    render(json: body, status: :ok)
  end
end
