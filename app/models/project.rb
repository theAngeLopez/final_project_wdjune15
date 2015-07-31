class Project < ActiveRecord::Base
<<<<<<< HEAD
		belongs_to :initiatives
		has_many tags
		has_many :interests, through tags
		has_many :users, through: :interest

=======
    belongs_to :initiative
    has_many :tags
    has_many :interests, through: :tags
    has_many :users, through: :interest
>>>>>>> 1e6675743897b366555a16a68915b005fa728750
end
