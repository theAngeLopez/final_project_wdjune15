# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'rubygems'
require 'faker'

SurveyImage.destroy_all
Tag.destroy_all


env   = Tag.create(name: "environment",   category: "cause")
home  = Tag.create(name: "homelessness",  category: "cause")
water = Tag.create(name: "water",         category: "cause")
edu   = Tag.create(name: "education",     category: "cause")

Tag.create(name: "monetary",  category: "contribution")
Tag.create(name: "volunteer", category: "contribution")
Tag.create(name: "service",   category: "contribution")

SurveyImage.create(img_url:"ENV1_500.jpg", tag_id: env.id, score: 5)
SurveyImage.create(img_url:"ENV2_500.jpg", tag_id: env.id, score: 5)
SurveyImage.create(img_url:"ENV3_500.jpg", tag_id: env.id, score: 5)

SurveyImage.create(img_url:"HOME1_500.jpg", tag_id: home.id, score: 5)
SurveyImage.create(img_url:"HOME2_500.jpg", tag_id: home.id, score: 5)
SurveyImage.create(img_url:"HOME3_500.jpg", tag_id: home.id, score: 5)

SurveyImage.create(img_url:"WATER1_500.jpg", tag_id: water.id, score: 5)
SurveyImage.create(img_url:"WATER2_500.jpg", tag_id: water.id, score: 5)
SurveyImage.create(img_url:"WATER3_500.jpg", tag_id: water.id, score: 5)

SurveyImage.create(img_url:"EDU1_500.jpg", tag_id: edu.id, score: 5)
SurveyImage.create(img_url:"EDU2_500.jpg", tag_id: edu.id, score: 5)
SurveyImage.create(img_url:"EDU3_500.jpg", tag_id: edu.id, score: 5)

one = Initiative.create(name: Faker::Company.name, description: Faker::Lorem.sentence, image: "https://www.unodc.org/images/drug-prevention-and-treatment/CND_Youth_prepare_Initiative_Strategy_01.jpg")
two = Initiative.create(name: Faker::Company.name, description: Faker::Lorem.sentence, image: "http://web.mit.edu/wi/images/home_background.jpg")
three = Initiative.create(name: Faker::Company.name, description: Faker::Lorem.sentence, image: "http://www.effectivemanagementleadership.com/images/61.jpg")
four = Initiative.create(name: Faker::Company.name, description: Faker::Lorem.sentence, image: "http://transitionculture.org/wp-content/uploads/2007/unifiedhands.jpg")

6.times do
  Project.create!(
  :name => Faker::App.name,
  :description => Faker::Lorem.sentence,
  :initiative_id => one,
  # :tag_id => env,
  :city => Faker::Address.city,
  :contact_name => Faker::Name.name,
  :email => Faker::Internet.email,
  :phone_number => Faker::PhoneNumber.phone_number
  )
end

6.times do
Project.create!(
  :name => Faker::App.name,
  :description => Faker::Lorem.sentence,
  :initiative_id => two,
  # :tag_id => home,
  :city => Faker::Address.city,
  :contact_name => Faker::Name.name,
  :email => Faker::Internet.email,
  :phone_number => Faker::PhoneNumber.phone_number
  )
end

6.times do
Project.create!(
  :name => Faker::App.name,
  :description => Faker::Lorem.sentence,
  :initiative_id => three,
  # :tag_id => water,
  :city => Faker::Address.city,
  :contact_name => Faker::Name.name,
  :email => Faker::Internet.email,
  :phone_number => Faker::PhoneNumber.phone_number
  )
end

6.times do
Project.create!(
  :name => Faker::App.name,
  :description => Faker::Lorem.sentence,
  :initiative_id => four,
  # :tag_id => edu,
  :city => Faker::Address.city,
  :contact_name => Faker::Name.name,
  :email => Faker::Internet.email,
  :phone_number => Faker::PhoneNumber.phone_number
  )
end
