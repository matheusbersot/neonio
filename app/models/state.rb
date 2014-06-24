class State < ActiveRecord::Base

  attr_accessible :name, :acronym

  #Bi-directional Associations (belongs_to and has_many)
  #inverse_of : By default, Active Record doesn't know about the connection between these associations.
  # This can lead to two copies of an object getting out of sync.
  # Example:
  # c = Customer.first
  # o = c.orders.first
  # c.first_name == o.customer.first_name # => true
  # c.first_name = 'Manny'
  # c.first_name == o.customer.first_name # => false
  # This happens because c and o.customer are two different in-memory representations of the same data,
  # and neither one is automatically refreshed from changes to the other.
  # Active Record provides the :inverse_of option so that you can inform it of these relations

  #:delete, when the object is destroyed, all its associated objects will be deleted directly from the
  # database without calling their destroy method.

  #########  Relationships ###########

  has_many :cities, inverse_of: :state, dependent: :delete_all

  #########  Validation ###########

  validates :name, presence: true
  validates :acronym, presence: true
  validates_associated :cities

end
