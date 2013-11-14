class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.string :name

      t.timestamps
    end
  end
end
