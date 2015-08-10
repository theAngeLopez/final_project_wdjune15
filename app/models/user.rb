class User < ActiveRecord::Base
  authenticates_with_sorcery!
  has_many :interests
  has_one :initiative
  has_many :projects, through: :initiatives


  validates :password, length: { minimum: 3 }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  def full_name
    first_name + " " + last_name
  end

  def interest_score(tag)
    i = interests.where(tag: tag).first
    if i
      i.score
    else
      0
    end
  end
end
