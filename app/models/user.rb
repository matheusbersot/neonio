#encoding: UTF-8

class User < ActiveRecord::Base

  has_secure_password

  attr_accessible :name,:password, :password_confirmation, :email

  #########  Relationships ###########

  belongs_to    :profile
  has_one       :store

  #Auto Relationship
  belongs_to    :manager, class_name: "User"
  has_many      :employees, class_name: "User", foreign_key: "manager_id"


  #########  Validations ###########

  validates :name, presence: true, length: { maximum: 20 }, uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 8 }
  validates :email, presence: true

  validates :profile, presence: true

  #####################################

  #instance_method
  def system_admin?
    :profile_id == Profile::SYSTEM_ADMIN_PROFILE
  end

  def store_admin?
    :profile_id == Profile::STORE_ADMIN_PROFILE
  end

  def store_seller?
    :profile_id == Profile::STORE_SELLER_PROFILE
  end

  # method with self before its name, it is considered CLASS METHOD (like static method in JAVA)
  def self.authenticate(username, password)
    user = User.find_by_name(username)
    unless user && user.authenticate(password)
      raise "Usuário ou senha inválido."
    end
    user
  end
end
