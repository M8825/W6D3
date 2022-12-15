# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Artwork.destroy_all
Artwork.destroy_all
ArtworkShare.destroy_all

# User
yen = Artwork.create!(username: "Yenny")
mlkz = Artwork.create!(username: "Mlkz")
mymelody = Artwork.create!(username: "MyMelody")
victor = Artwork.create!(username: "Victor")
nini = Artwork.create!(username: "Ninia")
doh = Artwork.create!(username: "Doh")
kin = Artwork.create!(username: "Kin")

# Artworks
train =
  Artwork.create!(
    title: "Train of busan",
    img_url: "url_train",
    artist_id: mlkz.id
  )
monalisa1 =
  Artwork.create!(title: "monalisa", img_url: "url_squid", artist_id: yen.id)
monalisa =
  Artwork.create!(title: "monalisa", img_url: "url_monalisa", artist_id: doh.id)
tigerskin =
  Artwork.create!(
    title: "tigerskin",
    img_url: "url_tigerskinn",
    artist_id: doh.id
  )

# ArtworkShare.create!(artwork_id: , viewer_id: )
ArtworkShare.create!(artwork_id: train.id, viewer_id: yen.id)
ArtworkShare.create!(artwork_id: monalisa1.id, viewer_id: mlkz.id)
ArtworkShare.create!(artwork_id: monalisa.id, viewer_id: yen.id)
ArtworkShare.create!(artwork_id: tigerskin.id, viewer_id: mlkz.id)
ArtworkShare.create!(artwork_id: tigerskin.id, viewer_id: yen.id)
