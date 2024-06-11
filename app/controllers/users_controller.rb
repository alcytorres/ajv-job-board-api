class UsersController < ApplicationController
  def index
    render json: { message: "testing 10, 11, 12, 13" }
  end
end
