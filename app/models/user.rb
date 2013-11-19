class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :interests
  has_one :profile
  has_many :albums
  mount_uploader :avatar, AvatarUploader
  
  def name 
    return first_name + ' ' + last_name
  end
end
