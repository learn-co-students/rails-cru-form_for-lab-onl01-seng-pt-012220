# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Genre.create(name: 'Pop')
Genre.create(name: 'RnB')
Genre.create(name: 'Rock')
Genre.create(name: 'Rap')
Genre.create(name: 'country')
Genre.create(name: 'Gospel')

Artist.create(name: 'Beyonce', bio: 'Female RnB Artist From Texas')
Artist.create(name: 'Drake', bio: 'Handsome rapper with unique flow from Torronto, Canada')