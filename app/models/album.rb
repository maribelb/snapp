class Album < ActiveRecord::Base
  belongs_to :user
  has_many :images, through: :image_albums
  has_many :image_albums
end
