# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
artist = Artist.create(name: 'Depeche Mode')
artist.songs.create(title: 'Stranglove', length: 367, play_count: 98764)
artist.songs.create(title: 'Everything Counts', length: 367, play_count: 98764)
artist.songs.create(title: 'Master and Servant', length: 367, play_count: 98764)
artist.songs.create(title: 'Everything Counts', length: 367, play_count: 98764)
artist.songs.create(title: 'Policy of Truth', length: 367, play_count: 98764)
artist.songs.create(title: 'Dead of Night', length: 367, play_count: 98764)
artist.songs.create(title: 'Goodbye Pain', length: 367, play_count: 98764)
artist.songs.create(title: 'Never Let Me Down Again', length: 367, play_count: 98764)
