class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.string :title
      t.string :artist
      t.string :info

      t.timestamps
    end
  end
end
