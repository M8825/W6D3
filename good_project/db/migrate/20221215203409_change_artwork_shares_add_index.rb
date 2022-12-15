class ChangeArtworkSharesAddIndex < ActiveRecord::Migration[7.0]
  def change
    add_index :artwork_shares, %i[artwork_id viewer_id], unique: true
  end
end
