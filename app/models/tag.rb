class Tag < ActiveRecord::Base

  has_and_belongs_to_many :projects

  # def self.our_cause(Tag)
  #   if Tag.category = "cause"
      
  #   else 
      
  # end

  def self.option_groups
    options = []
    causes = ["cause",[]]
    self.causes.each do |cause|
      group = []
      group << cause.name
      group << cause.id
      causes[1] << group
    end
    options << causes
    contributions = ["contribution",[]]
    self.contributions.each do |contribution|
      group = []
      group << contribution.name
      group << contribution.id
      contributions[1] << group
    end
    options << contributions    
    return options
  end

  def self.causes
    self.where(category: "cause")
  end

  def self.contributions
    self.where(category: "contribution")
  end

end
