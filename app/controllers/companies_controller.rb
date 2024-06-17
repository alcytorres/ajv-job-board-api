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
      name: params[:name],
      logo: params[:logo],
      description: params[:description],
    )
    render :show
  end

  def update
    @company = Company.find_by(id: params[:id])
    @company.update(
      name: params[:name] || @company.name,
      logo: params[:logo] || @company.logo,
      description: params[:description] || @company.description,
    )
    render :show
  end

  def destroy
    @company = Company.find_by(id: params[:id])
    @company.destroy
    render json: { message: "Company destroyed successfully" }
  end
end
