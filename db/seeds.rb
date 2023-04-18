# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
product_team = Team.find_or_create_by({name:"Product Dev"})
platform_team = Team.find_or_create_by({name:"Platform Dev"})

jerry = Member.find_or_create_by({first_name: "Jerry", last_name: "S", city: "New York", state: "NY", country: "US", team_id: product_team.id})
george = Member.find_or_create_by({first_name: "George", last_name: "C", city: "New York", state: "NY", country: "US", team_id: product_team.id})
elaine = Member.find_or_create_by({first_name: "Elaine", last_name: "B", city: "New York", state: "NY", country: "US", team_id: product_team.id})
cosmo = Member.find_or_create_by({first_name: "Cosmo", last_name: "K", city: "New York", state: "NY", country: "US", team_id: platform_team.id})
bob = Member.find_or_create_by({first_name: "Bob", last_name: "S", team_id: platform_team.id})

homepage_redesign = Project.find_or_create_by({name: "Homepage Redesign"})
order_confirmation_page = Project.find_or_create_by({name: "Order Confirmation Page"})
review_flow_page = Project.find_or_create_by({name: "Review Flow Refactor"})

homepage_redesign.member_ids = [jerry.id, george.id, bob.id]
order_confirmation_page.member_ids = [george.id, elaine.id, cosmo.id]
review_flow_page.member_ids = [elaine.id, bob.id]