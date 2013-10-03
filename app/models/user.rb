class User < ActiveRecord::Base
  authenticates_with_sorcery!
  attr_accessible :first_name, :last_name, :email, :password, :password_confirmation
  has_many :projects
  has_many :pledges

  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :email, :presence => true 
  validates_confirmation_of :password
  validates :password, :presence => true 
  validates :password_confirmation, :presence => true 


end
