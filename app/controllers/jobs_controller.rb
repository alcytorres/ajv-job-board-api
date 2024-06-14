class JobsController < ApplicationController

  def index
    @jobs = Job.all
    render :index
  end

  def show
    @job = Job.find_by(id: params[:id])
    render :show
  end

  def create
    @job = Job.create(
      id: params[:id],
      company_id: params[:company_id],
      title: params[:title],
      description: params[:description],
      url: params[:url],
      location: params[:location],
      active: params[:active],
      salary_range: params[:salary_range],
    )
    render :show
  end

end
