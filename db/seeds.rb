# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# job = Job.new(company_id: 101, title: "ruby on rails instructor", description: "teaches ruby programming on rails framework", url: "https://via.placeholder.com/150", location: "chicago", active: "TRUE", salary_range: "40k - 60k")



job = Job.new(company_id: 102, title: "software engineer", description: "maintain and upgrade maps app", url: "https://via.placeholder.com/150", location: "SF", active: "TRUE", salary_range: "40k - 60k")
job.save

job = Job.new(company_id: 101, title: "Teachers Assistant", description: "Help students clear doubts", url: "https://via.placeholder.com/150", location: "LA", active: "TRUE", salary_range: "40k - 60k")
job.save


job = Job.new(company_id: 102, title: "data analyst", description: "teaches ruby programming on rails framework", url: "https://via.placeholder.com/150", location: "seattle", active: "TRUE", salary_range: "40k - 60k")
job.save

