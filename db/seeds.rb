# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.destroy_all
Review.destroy_all

nandos = Restaurant.create(name: 'Nandos', cuisine: 'Chicken')
nandos.reviews.create(rate: 5, comment: 'Greatest')
nandos.reviews.create(rate: 5, comment: 'Life changing')
nandos.reviews.create(rate: 5, comment: 'I saw god after the meal')
nandos.reviews.create(rate: 5, comment: 'Amazing')
nandos.reviews.create(rate: 4, comment: 'Im Nicola and I have no sense of taste!')

byron = Restaurant.create(name: 'Byron', cuisine: 'Burgers')
byron.reviews.create(rate: 5, comment: 'Best burgers in London')
byron.reviews.create(rate: 3, comment: 'So So')
byron.reviews.create(rate: 1, comment: 'I saw a rat')
byron.reviews.create(rate: 5, comment: 'Best meal')
byron.reviews.create(rate: 1, comment: 'Im a vegan!')

chilango = Restaurant.create(name: 'Chilango', cuisine: 'Mexican')
chilango.reviews.create(rate: 5, comment: 'Great burritos')
chilango.reviews.create(rate: 3, comment: 'Average')
chilango.reviews.create(rate: 4, comment: 'Great value for money')
chilango.reviews.create(rate: 5, comment: 'Always great')
chilango.reviews.create(rate: 1, comment: 'Im a vegan!')