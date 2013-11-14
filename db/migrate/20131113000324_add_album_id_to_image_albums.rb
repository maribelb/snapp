class AddAlbumIdToImageAlbums < ActiveRecord::Migration
  def change
    add_column :image_albums, :album_id, :integer
  end
end
