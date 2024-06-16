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

  def update
    @job = Job.find_by(id: params[:id])
    @job.update(
      company_id: params[:company_id] || @job.company_id,
      title: params[:title] || @job.title,
      description: params[:description] || @job.description,
      url: params[:url] || @job.url,
      location: params[:location] || @job.location,
      active: params[:active] || @job.active,
      salary_range: params[:salary_range] || @job.salary_range,
    )
    render :show
  end



end
