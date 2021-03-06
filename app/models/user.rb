class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  #devise :database_authenticatable, :registerable,
  #       :recoverable, :rememberable, :trackable, :validatable,
  #       :confirmable,:lockable
  devise :database_authenticatable, :registerable, :rememberable,
         :trackable, :validatable
  has_many :messages
  validates_uniqueness_of :username
end
