class UsersController < ApplicationController
  def index
    render json: { message: "testing 123" }
  end
end
