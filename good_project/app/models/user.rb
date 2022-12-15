# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  username   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Artwork < ApplicationRecord
  validates :username, presence: true, uniqueness: true

  # Associations
  has_many :artworks, foreign_key: :artist_id, class_name: :Artwork

  has_many :shared_artwork, foreign_key: :viewer_id, class_name: :ArtworkShare

  has_many :shared_artworks, through: :shared_artwork, source: :artwork
end
