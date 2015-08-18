# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'rubygems'
require 'faker'

User.destroy_all
SurveyImage.destroy_all
Tag.destroy_all
Project.destroy_all
Initiative.destroy_all

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Users  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

user = User.create(first_name: "Angel", last_name: "Lopez", email: "angel@lopez.ca", password: "12341234", password_confirmation: "12341234")
sam = User.create(first_name: "Sam", last_name: "Sawchuk", email: "sam@sand.ca", password: "12341234", password_confirmation: "12341234")
bill = User.create(first_name: "Billy", last_name: "Gates", email: "billy@gates.cool", password: "12341234", password_confirmation: "12341234")
eug = User.create(first_name: "Eugenia", last_name: "Duodu", email: "eugenia@duodu.com", password: "12341234", password_confirmation: "12341234")

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Cause and Contribution Tags  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

env   = Tag.create(name: "environment",   category: "cause")
home  = Tag.create(name: "homelessness",  category: "cause")
water = Tag.create(name: "water",         category: "cause")
edu   = Tag.create(name: "education",     category: "cause")

monetary = Tag.create(name: "monetary",   category: "contribution")
volunteer = Tag.create(name: "volunteer", category: "contribution")
service = Tag.create(name: "service",     category: "contribution")

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Survey Images  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

SurveyImage.create(img_url:"ENV1_500.png", tag_id: env.id, score: 5)
SurveyImage.create(img_url:"ENV2_500.png", tag_id: env.id, score: 5)
SurveyImage.create(img_url:"ENV3_500.png", tag_id: env.id, score: 5)

SurveyImage.create(img_url:"HOME1_500.png", tag_id: home.id, score: 5)
SurveyImage.create(img_url:"HOME2_500.png", tag_id: home.id, score: 5)
SurveyImage.create(img_url:"HOME3_500.png", tag_id: home.id, score: 5)

SurveyImage.create(img_url:"WATER1_500.png", tag_id: water.id, score: 5)
SurveyImage.create(img_url:"WATER2_500.png", tag_id: water.id, score: 5)
SurveyImage.create(img_url:"WATER3_500.png", tag_id: water.id, score: 5)

SurveyImage.create(img_url:"EDU1_500.png", tag_id: edu.id, score: 5)
SurveyImage.create(img_url:"EDU2_500.png", tag_id: edu.id, score: 5)
SurveyImage.create(img_url:"EDU3_500.png", tag_id: edu.id, score: 5)

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Initiatives  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

sand = Initiative.create(owner_id: sam.id,
  name: "Sandwich for a Story",
  description: "It’s simple. We are on a mission to re-humanize the homeless population through simple acts of engagement.",
  image: "http://i61.tinypic.com/2ir8xu.png")
wat = Initiative.create(owner_id: user.id,
  name: "WaterAid Canada",
  description: "WaterAid Canada is a registered Canadian charity dedicated to providing clean water, basic sanitation, and hygiene education to the world's poorest people.",
  image: "http://i60.tinypic.com/1yn5nd.png")
vos = Initiative.create(owner_id: eug.id,
  name: "Visions of Science",
  description: "Visions of Science Network for Learning (VoSNL) programs offer a unique and comprehensive network for learning to youth who are traditionally under-represented in STEM. Youth gain equitable access to programming, education and mentorship opportunities to achieve measurable success through a hands-on, engaged learning model.",
  image: "http://i57.tinypic.com/96htfd.png")
gard = Initiative.create(owner_id: user.id,
  name: "Toronto Community Garden Network",
  description: "The Toronto Community Garden Network is looking for volunteers to help with events, organizational development, giving workshops, graphic design, gardening and much more.",
  image: "http://i58.tinypic.com/ff47co.png")

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Homelessness Projects ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

p = Project.create!(
  :name => "Ambassador - Sandwich for a Story",
  :description => "Spread the word outside your communities, make new friends and help provide a voice to the homeless in your city.",
  :initiative_id => sand.id,
  :city => "Anywhere",
  :contact_name => sam.full_name,
  :email => Faker::Internet.email,
  :phone_number => Faker::PhoneNumber.phone_number,
  :image => "http://i61.tinypic.com/wcc043.png"
  )
  p.tags << home
  p.tags << volunteer
  p.tags << service

p = Project.create!(
  :name => "Sponsor Sandwich for a Story",
  :description => "Your contribution helps feed the hungry and empowers students to engage with the homeless, so together we can end stigma.",
  :initiative_id => sand.id,
  :city => "Online",
  :contact_name => sam.full_name,
  :email => Faker::Internet.email,
  :phone_number => Faker::PhoneNumber.phone_number,
  :image => "http://i57.tinypic.com/16m7xmq.png"
  )
  p.tags << home
  p.tags << monetary

p = Project.create!(
  :name => "Social Voice",
  :description => "Donate your voice today and help Sandwich for a Story tell your followers on social media about the power of engagement.",
  :initiative_id => sand.id,
  :city => "Online",
  :contact_name => sam.full_name,
  :email => Faker::Internet.email,
  :phone_number => Faker::PhoneNumber.phone_number,
  :image => "http://i59.tinypic.com/2nvcmew.png"
  )
  p.tags << home
  p.tags << volunteer
  p.tags << service

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Water Projects ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

p = Project.create!(
  :name => "Bucket List Adventures",
  :description => "WaterAid Canada’s Bucket List Adventures is a five-year series (2015-19) of epic global excursions that will take small groups of WaterAid supporters by boot, pedal and paddle to some of the world’s most breathtaking destinations. Led by Olympic gold medalist and host of CTV’s Amazing Race Canada, Jon Montgomery and his wife Darla, WaterAid’s Bucket List Adventures, aim to raise $1,000,000 to support clean water projects around the world.",
  :initiative_id => wat.id,
  :city => "Anywhere",
  :contact_name => user.full_name,
  :email => Faker::Internet.email,
  :phone_number => Faker::PhoneNumber.phone_number,
  :image => "http://i62.tinypic.com/55mjq8.png"
  )
  p.tags << water
  p.tags << monetary
  p.tags << volunteer
  p.tags << service

p = Project.create!(
  :name => "Donate to WaterAid",
  :description => "Give water, give life. Just $25 can give one person acccess to clean, safe drinking water. Donate today.",
  :initiative_id => wat.id,
  :city => "Online",
  :contact_name => user.full_name,
  :email => Faker::Internet.email,
  :phone_number => Faker::PhoneNumber.phone_number,
  :image => "http://i57.tinypic.com/11ijqtx.png"
  )
  p.tags << water
  p.tags << monetary

p = Project.create!(
  :name => "Long Walk to Water",
  :description => "Peter Snider, Colin Snider and Paul Newcombe took a long walk for water August 2 – 10. The 9-day 305 km hike along the Rideau Trail (Kingston to Ottawa, Ontario)",
  :initiative_id => wat.id,
  :city => "Toronto",
  :contact_name => user.full_name,
  :email => Faker::Internet.email,
  :phone_number => Faker::PhoneNumber.phone_number,
  :image => "http://i57.tinypic.com/jj5xtx.png"
  )
  p.tags << water
  p.tags << volunteer
  p.tags << service

p = Project.create!(
  :name => "Share on Social Media",
  :description => "Most people prefer to give to people they know – so start there. Share your funny and inspiring stories while telling your friends and followers that you support access to clean water. Post, share, blog… and be sure to tag us!",
  :initiative_id => wat.id,
  :city => "Online",
  :contact_name => user.full_name,
  :email => Faker::Internet.email,
  :phone_number => Faker::PhoneNumber.phone_number,
  :image => "http://i59.tinypic.com/2hces6a.png"
  )
  p.tags << water
  p.tags << volunteer
  p.tags << service

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Education Projects ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

p = Project.create!(
  :name => "Saturday Science Club",
  :description => "Our clubs consist of Grade 4 to 8 students and each week they participate in an activity, project, or volunteer activity related to science, technology, engineering and mathematics. These clubs are organized in partnership with other community service groups and led by volunteers from local colleges, universities, senior high school students and working or retired professionals.",
  :initiative_id => vos.id,
  :city => "GTA",
  :contact_name => eug.full_name,
  :email => Faker::Internet.email,
  :phone_number => Faker::PhoneNumber.phone_number,
  :image => "http://i61.tinypic.com/o5e2jd.png"
  )
  p.tags << edu
  p.tags << monetary
  p.tags << volunteer
  p.tags << service

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Environment Projects ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

p = Project.create!(
  :name => "Community Garden Projects",
  :description => "Do you have a great green thumb? A passion for planting? Are you a wizard when it comes to weeding? We are looking for someone who can help us maintain our community gardens. There are about 6 positions available.",
  :initiative_id => gard.id,
  :city => "GTA",
  :contact_name => user.full_name,
  :email => Faker::Internet.email,
  :phone_number => Faker::PhoneNumber.phone_number,
  :image => "http://i58.tinypic.com/sc9d2s.png"
  )
  p.tags << env
  p.tags << volunteer
  p.tags << service

p = Project.create!(
  :name => "CultivateTO",
  :description => "Cultivate Toronto is a registered non-profit organization with the goal of turning Toronto’s front yards, backyards, and rooftops into a sustainable source of fresh, organically grown food. We are fueled by a passion for engaging and connecting the community in the rediscovery of local food.",
  :initiative_id => gard.id,
  :city => "GTA",
  :contact_name => user.full_name,
  :email => Faker::Internet.email,
  :phone_number => Faker::PhoneNumber.phone_number,
  :image => "http://i62.tinypic.com/907znd.png"
  )
  p.tags << env
  p.tags << monetary
  p.tags << volunteer
  p.tags << service

p = Project.create!(
  :name => "Toronto Seed Library",
  :description => "The Toronto Seed Library (TSL)- is sprouting and growing fast - So we are in need of many volunteers.",
  :initiative_id => gard.id,
  :city => "GTA",
  :contact_name => user.full_name,
  :email => Faker::Internet.email,
  :phone_number => Faker::PhoneNumber.phone_number,
  :image => "http://i57.tinypic.com/2dt2880.png"
  )
  p.tags << env
  p.tags << volunteer

p = Project.create!(
  :name => "Parkview Neighbourhood Garden",
  :description => "The fourth growing season at Parkview Neighbourhood Garden is well underway. This year, the north and south sections of the garden are fully planted. We now have raspberries and currants in the garden, thanks to donations of these plants by volunteers. We are also starting a small orchard in the central section of the garden. We need lots of volunteers to maintain a garden that spans a city block.",
  :initiative_id => gard.id,
  :city => "GTA",
  :contact_name => user.full_name,
  :email => Faker::Internet.email,
  :phone_number => Faker::PhoneNumber.phone_number,
  :image => "http://i57.tinypic.com/25i0sp5.png"
  )
  p.tags << env
  p.tags << monetary
  p.tags << volunteer
