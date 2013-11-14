class AddImageIdToImageAlbums < ActiveRecord::Migration
  def change
    add_column :image_albums, :image_id, :integer
  end
end
