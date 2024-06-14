class JobsController < ApplicationController

  def index
    @jobs = Job.all
    render :index
  end

  def show
    @job = Job.find_by(id: params[:id])
    render :show
  end

end
