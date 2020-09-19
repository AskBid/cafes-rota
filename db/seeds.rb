# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.new(name: 'sergio', email: 'sergio@sergio.it', password_digest: 'password')
u2 = User.new(name: 'mario', email: 'mario@mario.it', password_digest: 'password')

cafe1 = Cafe.new(name: 'Clean Heart Cafe', location: 'Whitechapel')
cafe1.links.build(name: 'own', url: 'https://www.cleanheartscafe.co.uk/')
cafe1.links.build(name: 'wecoffe', url: 'https://wecoffee.io/listing/clean-hearts-cafe/')
cafe1.images.build(name: 'wecoffe', url: 'https://wecoffee.io/wp-content/uploads/2019/04/IMG-0765-compressed-scaled.jpg')

cafe2 = Cafe.new(name: 'Holiday Inn Whitechapel')
cafe2.links.build(name: 'own', url: 'https://www.cleanheartscafe.co.uk/')
cafe2.links.build(name: 'wecoffe', url: 'https://wecoffee.io/listing/holiday-inn-whitechapel/')
cafe2.images.build(name: 'wecoffe', url: 'https://wecoffee.io/wp-content/uploads/2019/04/IMG-0765-compressed-scaled.jpg')

cafe3 = Cafe.new(name: 'TAB X TAB', location_url: 'https://g.page/TABxTABLondon?share')
cafe3.links.build(name: 'own', url: 'https://tabxtab.com/')
cafe3.images.build(name: 'wecoffe', url: 'https://lh5.googleusercontent.com/p/AF1QipO6EJM1syb9UgFtWhsjdNADOkp_AtWiQHzXgwFT=s870-k-no§')

cafe3 = Cafe.new(name: 'The Ambrose Cafe', location_url: 'https://goo.gl/maps/hBtBttkW2TYn2gWW7')
cafe3.links.build(name: 'own', url: 'https://www.heals.com/heals-cafe')
cafe3.images.build(name: 'google', url: 'https://lh5.googleusercontent.com/p/AF1QipOmJQdvMR-qLY6TKzaT341S5SiCn6WTIF5bloYd=s720-k-no')
cafe3.images.build(name: 'google', url: 'https://lh5.googleusercontent.com/p/AF1QipPgJWwXuZOJO32Dxwj7IC1XKhnVk9mZ6XuebW1W=s720-k-no')

cafe3.save

u1.cafes << [cafe2, cafe1]

u1.save
u2.save