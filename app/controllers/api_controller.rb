class ApiController < ApplicationController
  before_action :set_default_response_format
  before_action :authenticate_user!
  
  def set_default_response_format
    request.format = :json
  end
end
