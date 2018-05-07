# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Artwork.destroy_all
ArtworkShare.destroy_all

ryan = User.create(username: "therealmeyer")
ed = User.create(username: "eho")
kahaan = User.create(username: "kahaan123")
nick = User.create(username: "nickbeard")



ml = Artwork.create(title: "Mona Lisa", image_url: "ml.jpg", artist_id: ryan.id)
hydro = Artwork.create(title: "Hydroflask", image_url: "hydro.jpg", artist_id: ed.id)
apple = Artwork.create(title: "apple", image_url: "apple.jpg", artist_id: ed.id)
star = Artwork.create(title: "Stary Night", image_url: "starynight.jpg", artist_id: ryan.id)

ArtworkShare.create(artwork_id: ml.id, viewer_id: kahaan.id)
ArtworkShare.create(artwork_id: ml.id, viewer_id: nick.id)
ArtworkShare.create(artwork_id: hydro.id, viewer_id: ryan.id)
ArtworkShare.create(artwork_id: apple.id, viewer_id: ed.id)
ArtworkShare.create(artwork_id: star.id, viewer_id: ed.id)
ArtworkShare.create(artwork_id: star.id, viewer_id: nick.id)
