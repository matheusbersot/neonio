class District < ActiveRecord::Base

  attr_accessible :name

   #########  Relationships ###########

   belongs_to :city, inverse_of: :districts


   #########  Validations ###########
   validates :name, presence: true
   validates :city, presence: true
end
