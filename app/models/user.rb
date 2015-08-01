class User < ActiveRecord::Base
  authenticates_with_sorcery!
  has_many :interests
  has_one :initiative
  has_many :projects, through: :initiatives


  validates :password, length: { minimum: 3 }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

end
