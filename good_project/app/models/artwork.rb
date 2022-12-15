# == Schema Information
#
# Table name: artworks
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  img_url    :text             not null
#  artist_id  :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Artwork < ApplicationRecord
    validates :title, :artist_id, presence: true
    validates :img_url, uniqueness: true, presence: true
    validates_unitueness_of :title, scope: :artist_id

    # Associations
    belongs_to :artist,
        foreign_key: :artist_id,
        class_name: :User
  end
