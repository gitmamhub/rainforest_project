# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Product.create(
  name: 'computer',
  description: 'computing machine',
  price_in_cents: 1000 )

Product.create(
  name: 'table',
  description: 'furniture',
  price_in_cents: 5000 )

Product.create(
  name: 'chair',
  description: 'furniture',
  price_in_cents: 100 )

Product.create(
  name: 'channel_n5',
  description: 'perfume',
  price_in_cents: 1000 )
