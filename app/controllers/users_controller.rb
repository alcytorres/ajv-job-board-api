class UsersController < ApplicationController
  def index
    render json: { message: "testing 789" }
  end
end
