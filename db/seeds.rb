# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
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