class Project < ActiveRecord::Base
   	mount_uploader :image, ImageUploader

    belongs_to :initiative
    has_and_belongs_to_many :tags
    has_many :interests, through: :tags
    has_many :users, through: :interest

    def self.search_by_tag(tag_id)
      projects = []
      self.all.each do |project|
        if project.tags.include?(@tag)
          projects << project
        end
      end 
      return projects   	
    end

end
