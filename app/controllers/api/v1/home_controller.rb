class Api::V1::HomeController < ApplicationController
  before_action :authenticate_api_v1_user!

  def index
    @user = current_api_v1_user
    render json: @user
  end
end
