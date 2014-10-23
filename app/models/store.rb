class Store < ActiveRecord::Base
  attr_accessible :name, :cnpj, :telephone1, :telephone2, :telephone3,
                  :street_address, :number_address, :complement, :zip_code

  #########  Relationships ###########

  belongs_to :city
  belongs_to :state
  belongs_to :district
  belongs_to :user

  #########  Validations ###########

  validates :name, presence: true, length: { maximum: 100 }
  validates :cnpj, cnpj: true,  presence: true
  validates :telephone1, presence: true , length:  { in: 10..11 }, format: { with: /^[0-9]*$/, message: :msg_only_numbers }
  validates :telephone2, format: { with: /^[0-9]*$/, message: :msg_only_numbers }
  validates :telephone3, format: { with: /^[0-9]*$/, message: :msg_only_numbers }
  validates :street_address, presence: true, length: { maximum: 100 }
  validates :number_address, presence: true, length:  { in: 1..5 }
  validates :complement, presence: true, length: { maximum: 100 }
  validates :zip_code, presence: true, length: { is: 8 }

  validates :district, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :user, presence: true

end
