class CompaniesController < ApplicationController
  def index
    @companies = Company.all
    render :index
  end

  def show
    @company = Company.find_by(id: params[:id])
    render :show
  end

  def create
    @company = Company.create(
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
