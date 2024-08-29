# app/controllers/api/v1/data_controller.rb
class Api::V1::DataController < ApplicationController
  before_action :authenticate

  def fetch
    data = { comment: "This is protected data",  risk_score: "9" }
    render json: data, status: :ok
  end

  private

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == "username" && password == "password"
    end
  end
end
