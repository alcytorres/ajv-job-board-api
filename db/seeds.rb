# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


job = Job.new(company_id: 101, title: "ruby on rails instructor", description: "teaches ruby programming on rails framework", url: "https://via.placeholder.com/150", location: "chicago", active: "TRUE", salary_range: "40k - 60k")
job.save


job = Job.new(company_id: 102, title: "software engineer", description: "maintain and upgrade maps app", url: "https://via.placeholder.com/150", location: "SF", active: "TRUE", salary_range: "40k - 60k")
job.save

job = Job.new(company_id: 101, title: "Teachers Assistant", description: "Help students clear doubts", url: "https://via.placeholder.com/150", location: "LA", active: "TRUE", salary_range: "40k - 60k")
job.save


job = Job.new(company_id: 102, title: "data analyst", description: "crunch data for information processing", url: "https://via.placeholder.com/150", location: "seattle", active: "TRUE", salary_range: "40k - 60k")
job.save

job = Job.new(company_id: 102, title: "prework instructor", description: "evaluate students prework", url: "https://via.placeholder.com/150", location: "Austin", active: "TRUE", salary_range: "40k-60k")
job.save

company1 = Company.new(name: "Actualize", logo: "https://anyonecanlearntocode.com/assets/actualize-logo-7cfc296a2f85a02cf29c8ee89707b1da416d72b05fe1d582c9eb9a2888d7dc18.png", description: "top US coding bootcamp")
company1.save

company2 = Company.new(name: "Google", logo: "https://cdn2.hubspot.net/hubfs/53/image8-2.jpg", description: "master of search")
company2.save