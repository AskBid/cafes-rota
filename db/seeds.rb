# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.new(name: 'sergio', email: 'sergio@sergio.it', password: "pw")
u2 = User.new(name: 'mario', email: 'mail@mail.it', password: "pw")
u3 = User.new(name: 'bob', email: 'mail@mail.it', password: "pw")
u4 = User.new(name: 'em', email: 'mail@mail.it', password: "pw")
u5 = User.new(name: 'jemelle', email: 'mail@mail.it', password: "pw")
u6 = User.new(name: 'toks', email: 'mail@mail.it', password: "pw")
u7 = User.new(name: 'mara', email: 'mail@mail.it', password: "pw")
u8 = User.new(name: 'ale', email: 'mail@mail.it', password: "pw")
u9 = User.new(name: 'ilam', email: 'mail@mail.it', password: "pw")

cafe1 = Cafe.new(name: 'Clean Heart Cafe', location: 'Whitechapel', location_url: "https://goo.gl/maps/XG5URR3HhGaVN2URA")
cafe1.links.build(name: 'website', url: 'https://www.cleanheartscafe.co.uk/')
cafe1.links.build(name: 'wecoffe', url: 'https://wecoffee.io/listing/clean-hearts-cafe/')
cafe1.images.build(name: 'wecoffe', url: 'https://wecoffee.io/wp-content/uploads/2019/04/IMG-0765-compressed-scaled.jpg')
cafe1.openings.build(day: 'monday', status: 'open')
cafe1.openings.build(day: 'tuesday', status: 'open')
cafe1.openings.build(day: 'wednesday', status: 'open')
cafe1.openings.build(day: 'thursday', status: 'open')
cafe1.openings.build(day: 'friday', status: 'open')
cafe1.openings.build(day: 'saturday', status: 'open')
cafe1.openings.build(day: 'sunday', status: 'open')

cafe3 = Cafe.new(name: 'TAB X TAB', location_url: 'https://g.page/TABxTABLondon?share', location: 'Paddignton')
cafe3.links.build(name: 'website', url: 'https://tabxtab.com/')
cafe3.images.build(name: 'google', url: 'https://lh5.googleusercontent.com/p/AF1QipO6EJM1syb9UgFtWhsjdNADOkp_AtWiQHzXgwFT=s870-k-no')
cafe3.openings.build(day: 'monday', status: 'open')
cafe3.openings.build(day: 'tuesday', status: 'open')
cafe3.openings.build(day: 'wednesday', status: 'open')
cafe3.openings.build(day: 'thursday', status: 'open')
cafe3.openings.build(day: 'friday', status: 'open')
cafe3.openings.build(day: 'saturday', status: 'open')
cafe3.openings.build(day: 'sunday', status: 'open')


cafe4 = Cafe.new(name: 'The Ambrose Cafe', location_url: 'https://goo.gl/maps/hBtBttkW2TYn2gWW7', location: 'Warren Street')
cafe4.links.build(name: 'website', url: 'https://www.heals.com/heals-cafe')
cafe4.images.build(name: 'google', url: 'https://lh5.googleusercontent.com/p/AF1QipOmJQdvMR-qLY6TKzaT341S5SiCn6WTIF5bloYd=s720-k-no')
cafe4.images.build(name: 'google', url: 'https://lh5.googleusercontent.com/p/AF1QipPgJWwXuZOJO32Dxwj7IC1XKhnVk9mZ6XuebW1W=s720-k-no')
cafe4.openings.build(day: 'monday', status: 'open')
cafe4.openings.build(day: 'tuesday', status: 'open')
cafe4.openings.build(day: 'wednesday', status: 'open')
cafe4.openings.build(day: 'thursday', status: 'open')
cafe4.openings.build(day: 'friday', status: 'open')
cafe4.openings.build(day: 'saturday', status: 'open')
cafe4.openings.build(day: 'sunday', status: 'open')

cafe5 = Cafe.new(name: 'Indigo Hotel', location: "Earl's Court", location_url: "https://goo.gl/maps/2Q9Ykxd3EAdP6Dbk8")
cafe5.links.build(name: 'wecoffe', url: 'https://wecoffee.io/listing/indigo-hotel/')
cafe5.images.build(name: 'wecoffe', url: 'https://wecoffee.io/wp-content/uploads/2020/03/Indigo-Hotel-workspace.jpg')
cafe5.images.build(name: 'wecoffe', url: 'https://wecoffee.io/wp-content/uploads/2020/03/Indigo-Hotel-main-working-table-1.jpg')
cafe5.images.build(name: 'wecoffe', url: 'https://wecoffee.io/wp-content/uploads/2020/03/Indigo-Hotel-Snug-Break-Out-Area-scaled.jpg')
cafe5.images.build(name: 'wecoffe', url: 'https://wecoffee.io/wp-content/uploads/2020/03/Indigo-Hotel-meeting-room.jpg')
cafe5.openings.build(day: 'monday', status: 'open')
cafe5.openings.build(day: 'tuesday', status: 'open')
cafe5.openings.build(day: 'wednesday', status: 'open')
cafe5.openings.build(day: 'thursday', status: 'open')
cafe5.openings.build(day: 'friday', status: 'open')
cafe5.openings.build(day: 'saturday', status: 'open')
cafe5.openings.build(day: 'sunday', status: 'open')

cafe6 = Cafe.new(name: 'Fidelio', location: "Farrigndon", location_url: 'https://g.page/fideliorchestra?share')
cafe6.links.build(name: 'wecoffe', url: 'https://wecoffee.io/listing/fidelio/')
cafe6.links.build(name: 'website', url: 'https://fideliorchestra.art/')
cafe6.images.build(name: 'wecoffe', url: 'https://wecoffee.io/wp-content/uploads/2019/11/Fidelio-first-floor-scaled.jpg')
cafe6.images.build(name: 'wecoffe', url: 'https://wecoffee.io/wp-content/uploads/2019/11/Fidelio-main-image-scaled.jpg')
cafe6.images.build(name: 'wecoffe', url: 'https://wecoffee.io/wp-content/uploads/2019/11/Fidelio-ground-floor-scaled.jpg')
cafe6.images.build(name: 'wecoffe', url: 'https://wecoffee.io/wp-content/uploads/2019/11/Fidelio-ground-floor-2-scaled.jpg')
cafe6.openings.build(day: 'monday', status: 'open')
cafe6.openings.build(day: 'tuesday', status: 'open')
cafe6.openings.build(day: 'wednesday', status: 'open')
cafe6.openings.build(day: 'thursday', status: 'open')
cafe6.openings.build(day: 'friday', status: 'open')
cafe6.openings.build(day: 'saturday', status: 'close')
cafe6.openings.build(day: 'sunday', status: 'close')

cafe7 = Cafe.new(name: 'Signorelli East Village', location: "Stratford", location_url:'https://g.page/SignorelliEastVillage?share')
cafe7.links.build(name: 'wecoffe', url: 'https://wecoffee.io/listing/signorelli-east-village/')
cafe7.links.build(name: 'website', url: 'https://www.signorelli.co.uk/')
cafe7.images.build(name: 'google', url: 'https://lh5.googleusercontent.com/p/AF1QipMIPb8b_6fv6HigvntQAq8Zj3KBBR-vjqR1X8J-=s812-k-no')
cafe7.images.build(name: 'wecoffe', url: 'https://wecoffee.io/wp-content/uploads/2020/02/Signorelli-east-village-main-space-scaled.jpg')
cafe7.images.build(name: 'wecoffe', url: 'https://wecoffee.io/wp-content/uploads/2020/02/Signorelli-front-scaled.jpg')
cafe7.openings.build(day: 'monday', status: 'close')
cafe7.openings.build(day: 'tuesday', status: 'open')
cafe7.openings.build(day: 'wednesday', status: 'open')
cafe7.openings.build(day: 'thursday', status: 'open')
cafe7.openings.build(day: 'friday', status: 'open')
cafe7.openings.build(day: 'saturday', status: 'close')
cafe7.openings.build(day: 'sunday', status: 'close')

cafe8 = Cafe.new(name: 'Hanbury Hall', location: "Shoreditch", location_url: "https://goo.gl/maps/pjjr84ypGUL1AraX7")
cafe8.links.build(name: 'wecoffe', url: 'https://wecoffee.io/listing/hanbury-hall/')
cafe8.links.build(name: 'website', url: 'http://www.spitalfieldsvenue.org/venue-hire/hanbury-hall/')
cafe8.images.build(name: 'google', url: 'https://lh5.googleusercontent.com/p/AF1QipM82UlT1UQwqOh10MnuaqW14Hqswe7GP9TyclkA=s773-k-no')
cafe8.images.build(name: 'google', url: 'https://lh3.ggpht.com/p/AF1QipMrkBoBtQdc-oOslbtLZPz-X_z2RZVJFgMgb10M=s512')
cafe8.images.build(name: 'wecoffe', url: 'https://wecoffee.io/wp-content/uploads/2020/03/Hanbury-Hall-cafe.jpg')
cafe8.images.build(name: 'wecoffe', url: 'https://wecoffee.io/wp-content/uploads/2020/03/Hanbury-hall-cafe-2.jpg')
cafe8.images.build(name: 'wecoffe', url: 'https://wecoffee.io/wp-content/uploads/2020/03/Hanbury-Hall-cafe-seen-from-above.jpg')
cafe8.images.build(name: 'wecoffe', url: 'https://wecoffee.io/wp-content/uploads/2020/03/Hanbury-hall-cafe-top-floor.jpg')
cafe8.openings.build(day: 'monday', status: 'close')
cafe8.openings.build(day: 'tuesday', status: 'open')
cafe8.openings.build(day: 'wednesday', status: 'open')
cafe8.openings.build(day: 'thursday', status: 'open')
cafe8.openings.build(day: 'friday', status: 'open')
cafe8.openings.build(day: 'saturday', status: 'open')
cafe8.openings.build(day: 'sunday', status: 'open')

cafe9 = Cafe.new(name: 'Cafe in the Crypt', location: "Shoreditch", location_url: "https://goo.gl/maps/YxMcWUJSq81CYnjXA")
cafe9.links.build(name: 'wecoffe', url: 'https://wecoffee.io/listing/cafe-in-the-crypt/')
cafe9.links.build(name: 'website', url: 'https://www.stmartin-in-the-fields.org/visit/cafe-in-the-crypt/')
cafe9.images.build(name: 'wecoffe', url: 'https://wecoffee.io/wp-content/uploads/2020/02/the-Crypt-bar-table.jpg')
cafe9.images.build(name: 'wecoffe', url: 'https://wecoffee.io/wp-content/uploads/2020/02/The-Crypt-Cafe.jpg')
cafe9.images.build(name: 'wecoffe', url: 'https://wecoffee.io/wp-content/uploads/2020/02/The-Crypt-bar.jpg')
cafe9.openings.build(day: 'monday', status: 'open')
cafe9.openings.build(day: 'tuesday', status: 'open')
cafe9.openings.build(day: 'wednesday', status: 'open')
cafe9.openings.build(day: 'thursday', status: 'open')
cafe9.openings.build(day: 'friday', status: 'open')
cafe9.openings.build(day: 'saturday', status: 'open')
cafe9.openings.build(day: 'sunday', status: 'close')

cafe10 = Cafe.new(name: 'JOVA London', location: "Baker Street", location_url: "https://goo.gl/maps/jCDbaG7SSQ6DqKa38")
cafe10.links.build(name: 'wecoffe', url: 'https://wecoffee.io/listing/jova-london-free-workspace/')
cafe10.images.build(name: 'wecoffe', url: 'https://wecoffee.io/wp-content/uploads/2019/08/Jova-hero-main-NEW-scaled.jpg')
cafe10.images.build(name: 'wecoffe', url: 'https://wecoffee.io/wp-content/uploads/2019/07/Jova-cafe-area-scaled.jpg')
cafe10.images.build(name: 'wecoffe', url: 'https://wecoffee.io/wp-content/uploads/2019/07/jova-free-space-scaled.jpg')
cafe10.openings.build(day: 'monday', status: 'open')
cafe10.openings.build(day: 'tuesday', status: 'open')
cafe10.openings.build(day: 'wednesday', status: 'open')
cafe10.openings.build(day: 'thursday', status: 'open')
cafe10.openings.build(day: 'friday', status: 'open')
cafe10.openings.build(day: 'saturday', status: 'open')
cafe10.openings.build(day: 'sunday', status: 'open')

cafe11 = Cafe.new(name: 'The Hydrant', location: "Monument", location_url: "")
cafe11.links.build(name: 'wecoffe', url: 'https://wecoffee.io/listing/the-hydrant/')
cafe11.images.build(name: 'wecoffe', url: 'https://wecoffee.io/wp-content/uploads/2019/10/Hydrant-semi-private-booth-scaled.jpg')
cafe11.images.build(name: 'wecoffe', url: 'https://wecoffee.io/wp-content/uploads/2019/10/Hydrant-Main-space-with-meeting-room-scaled.jpg')
cafe11.images.build(name: 'wecoffe', url: 'https://wecoffee.io/wp-content/uploads/2019/10/Hydrant-hot-desking-scaled.jpg')
cafe11.openings.build(day: 'monday', status: 'open')
cafe11.openings.build(day: 'tuesday', status: 'open')
cafe11.openings.build(day: 'wednesday', status: 'open')
cafe11.openings.build(day: 'thursday', status: 'open')
cafe11.openings.build(day: 'friday', status: 'open')
cafe11.openings.build(day: 'saturday', status: 'close')
cafe11.openings.build(day: 'sunday', status: 'close')

cafe12 = Cafe.new(name: 'Village Paddignton', location: "Paddignton", location_url: "https://g.page/TheVillagePaddington?share")
cafe12.links.build(name: 'wecoffe', url: 'https://wecoffee.io/listing/village-paddington/')
cafe12.images.build(name: 'wecoffe', url: 'https://wecoffee.io/wp-content/uploads/2019/12/Village-Paddington-sofa-area.jpg')
cafe12.images.build(name: 'wecoffe', url: 'https://wecoffee.io/wp-content/uploads/2019/12/Village-Paddington-chess-area-scaled.jpg')
cafe12.images.build(name: 'wecoffe', url: 'https://wecoffee.io/wp-content/uploads/2019/12/Village-paddington-meeting-room-scaled.jpg')
cafe12.images.build(name: 'wecoffe', url: 'https://wecoffee.io/wp-content/uploads/2019/12/Village-Paddington-main-space.jpg')
cafe12.openings.build(day: 'monday', status: 'open')
cafe12.openings.build(day: 'tuesday', status: 'open')
cafe12.openings.build(day: 'wednesday', status: 'open')
cafe12.openings.build(day: 'thursday', status: 'open')
cafe12.openings.build(day: 'friday', status: 'open')
cafe12.openings.build(day: 'saturday', status: 'open')
cafe12.openings.build(day: 'sunday', status: 'open')

cafe13 = Cafe.new(name: 'The Lodge', location: "Surrey Quays", location_url: "https://goo.gl/maps/B9jr2GaRrGWrEee27")
cafe13.links.build(name: 'wecoffe', url: 'https://wecoffee.io/listing/the-lodge-space/')
cafe13.images.build(name: 'wecoffe', url: 'https://wecoffee.io/wp-content/uploads/2019/08/The-lodge-main-space.jpg')
cafe13.images.build(name: 'wecoffe', url: 'https://wecoffee.io/wp-content/uploads/2019/08/The-Lodge-scaled.jpg')
cafe13.openings.build(day: 'monday', status: 'open')
cafe13.openings.build(day: 'tuesday', status: 'open')
cafe13.openings.build(day: 'wednesday', status: 'open')
cafe13.openings.build(day: 'thursday', status: 'open')
cafe13.openings.build(day: 'friday', status: 'open')
cafe13.openings.build(day: 'saturday', status: 'close')
cafe13.openings.build(day: 'sunday', status: 'close')

cafe14 = Cafe.new(name: 'The Schoolhouse', location: "Clapham Junction", location_url: "https://g.page/theschoolhouselondon?share")
cafe14.links.build(name: 'wecoffe', url: 'https://wecoffee.io/listing/the-schoolhouse/')
cafe14.images.build(name: 'wecoffe', url: 'https://wecoffee.io/wp-content/uploads/2019/01/The-Schoolhouse-2-scaled.jpg')
cafe14.images.build(name: 'wecoffe', url: 'https://wecoffee.io/wp-content/uploads/2019/01/10765585264_IMG_9055-1.jpg')
cafe14.images.build(name: 'wecoffe', url: 'https://wecoffee.io/wp-content/uploads/2019/01/10764984336_IMG_9052-1-1-scaled.jpg')
cafe14.openings.build(day: 'monday', status: 'open')
cafe14.openings.build(day: 'tuesday', status: 'open')
cafe14.openings.build(day: 'wednesday', status: 'open')
cafe14.openings.build(day: 'thursday', status: 'open')
cafe14.openings.build(day: 'friday', status: 'open')
cafe14.openings.build(day: 'saturday', status: 'close')
cafe14.openings.build(day: 'sunday', status: 'close')

cafe15 = Cafe.new(name: 'Cafe Rosielee', location: "Charlton", location_url: "https://goo.gl/maps/XnP3sH73tm4joCYB8")
cafe15.links.build(name: 'wecoffe', url: 'https://wecoffee.io/listing/cafe-rosielee/')
cafe15.links.build(name: 'website', url: 'https://www.facebook.com/caferosielees')
cafe15.images.build(name: 'wecoffe', url: 'https://wecoffee.io/wp-content/uploads/2018/11/Cafe-Rosielee-Bar-1-scaled.jpg')
cafe15.images.build(name: 'wecoffe', url: 'https://wecoffee.io/wp-content/uploads/2018/11/Cafe-Rosielee-Space-3-scaled.jpg')
cafe15.images.build(name: 'wecoffe', url: 'https://wecoffee.io/wp-content/uploads/2018/11/Cafe-Rosielee-Bench-1-scaled.jpg')
cafe15.images.build(name: 'facebook', url: 'https://scontent-lhr8-1.xx.fbcdn.net/v/t1.0-9/s1080x2048/117314506_1628355560655111_9091866487549786002_o.jpg?_nc_cat=104&_nc_sid=9267fe&_nc_ohc=l6bDidKwd5MAX9WJZKP&_nc_ht=scontent-lhr8-1.xx&tp=7&oh=6f808b7e32199daf94c6299890dd75ea&oe=5F91609C')
cafe15.openings.build(day: 'monday', status: 'open')
cafe15.openings.build(day: 'tuesday', status: 'open')
cafe15.openings.build(day: 'wednesday', status: 'open')
cafe15.openings.build(day: 'thursday', status: 'open')
cafe15.openings.build(day: 'friday', status: 'open')
cafe15.openings.build(day: 'saturday', status: 'open')
cafe15.openings.build(day: 'sunday', status: 'open')

cafe16 = Cafe.new(name: 'Always Closed Cafe', location: "DreamLand", location_url: "https://goo.gl/maps/UjHDT4qyCzKQDujs6")
cafe16.links.build(name: 'wecoffe', url: 'https://cafeofyourdreams.com/')
cafe16.images.build(name: 'wecoffe', url: 'https://media-cdn.tripadvisor.com/media/photo-s/19/f1/5a/40/ph-cafe-psychedelic-hues.jpg')
cafe16.openings.build(day: 'monday', status: 'close')
cafe16.openings.build(day: 'tuesday', status: 'close')
cafe16.openings.build(day: 'wednesday', status: 'close')
cafe16.openings.build(day: 'thursday', status: 'close')
cafe16.openings.build(day: 'friday', status: 'close')
cafe16.openings.build(day: 'saturday', status: 'close')
cafe16.openings.build(day: 'sunday', status: 'close')

cafe3.save
cafe4.save
cafe5.save
cafe6.save
cafe7.save
cafe8.save
cafe9.save
cafe10.save
cafe11.save
cafe12.save
cafe13.save
cafe14.save
cafe15.save
cafe16.save

u1.cafes << [cafe3, cafe1, cafe6, cafe12, cafe15, cafe8]
u2.cafes << [cafe2, cafe1, cafe6, cafe9, cafe12, cafe4]
u3.cafes << [cafe7, cafe1, cafe6, cafe8, cafe15, cafe2, cafe13]
u4.cafes << [cafe13, cafe1, cafe6, cafe10, cafe4, cafe9]
u5.cafes << [cafe3, cafe1, cafe6, cafe13, cafe5, cafe4, cafe11]
u6.cafes << [cafe3, cafe1, cafe6, cafe13, cafe14, cafe5, cafe16]
u7.cafes << [cafe7, cafe1, cafe6, cafe8, cafe15, cafe2, cafe13, cafe4]
u8.cafes << [cafe3, cafe1, cafe6, cafe13, cafe14, cafe5, cafe16]
u9.cafes << [cafe3, cafe1, cafe6, cafe12, cafe15, cafe8, cafe7, cafe16]

[u1, u2, u3, u4, u5, u6, u7, u8, u9].each do |u|
	u.visits.each do |v|
		v.last_visited = "2020.#{rand(1..9)}.#{rand(1..29)}"
	end
end

u1.save
u2.save
u3.save
u4.save
u5.save
u6.save
u7.save
u8.save
u9.save