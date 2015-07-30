# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Tag.create(name: "environment",   category: "cause")
Tag.create(name: "homelessness",  category: "cause")
Tag.create(name: "water",         category: "cause")
Tag.create(name: "education",     category: "cause")

Tag.create(name: "monetary",      category: "contribution")
Tag.create(name: "volunteer",     category: "contribution")
Tag.create(name: "service",       category: "contribution")