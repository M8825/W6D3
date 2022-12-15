class CreateArtworks < ActiveRecord::Migration[7.0]
  def change
    create_table :artworks do |t|
      t.string :title, null: false
      t.text :img_url, null: false, unique: :true
      t.references :artist, null: false, foreign_key: { to_table: :users }

      # add_index :users, [:title, :artist_id], unique: true

      t.timestamps
    end
  end
end
