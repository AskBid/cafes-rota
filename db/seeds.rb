# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.new(name: 'sergio', email: 'sergio@sergio.it', password_digest: 'password')
u2 = User.new(name: 'mario', email: 'mario@mario.it', password_digest: 'password')

cafe1 = Cafe.new(name: 'Clean Heart Cafe')
cafe1.links.build(name: 'own', url: 'https://www.cleanheartscafe.co.uk/')
cafe1.links.build(name: 'wecoffe', url: 'https://wecoffee.io/listing/clean-hearts-cafe/')
cafe1.images.build(name: 'wecoffe', url: 'https://wecoffee.io/wp-content/uploads/2019/04/IMG-0765-compressed-scaled.jpg')

cafe1 = Cafe.new(name: 'Holiday Inn Whitechapel')
cafe1.links.build(name: 'own', url: 'https://www.cleanheartscafe.co.uk/')
cafe1.links.build(name: 'wecoffe', url: 'https://wecoffee.io/listing/holiday-inn-whitechapel/')
cafe1.images.build(name: 'wecoffe', url: 'https://wecoffee.io/wp-content/uploads/2019/04/IMG-0765-compressed-scaled.jpg')

u1.save
u2.save
