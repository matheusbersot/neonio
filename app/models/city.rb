class City < ActiveRecord::Base

  attr_accessible :name, :state_id

  #########  Relationships ###########

  belongs_to :state, inverse_of: :cities


  #########  Validations ###########
  validates :name, presence: true
  validates :state, presence: true

end
