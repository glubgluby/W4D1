# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

a = User.create!({username: 'Todd Howard'})
b = User.create!({username: 'Hodd Toward'})
c = Artwork.create!({title: 'Yeezus', artist_id: b.id, image_url: "www.www.com"})
d = ArtworkShare.create!({viewer_id: a.id, artwork_id: c.id})