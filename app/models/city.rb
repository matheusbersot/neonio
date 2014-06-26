class City < ActiveRecord::Base

  attr_accessible :name

  #########  Relationships ###########

  belongs_to :state
  has_many :districts, inverse_of: :city, dependent: :delete_all

  #########  Validations ###########
  validates :name, presence: true
  validates :state, presence: true

end
