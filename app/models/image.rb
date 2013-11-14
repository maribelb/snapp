class Image < ActiveRecord::Base
  belongs_to :user
  has_many :albums, through: :image_albums
  has_many :image_albums
end
