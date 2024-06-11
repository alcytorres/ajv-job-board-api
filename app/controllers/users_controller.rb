class UsersController < ApplicationController
  def index
    render json: { message: "testing 456" }
  end
end
