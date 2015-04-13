# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :name => 'First User', :email => 'user@example.com', :password => 'please1234', :password_confirmation => 'please1234'
puts 'New user created: ' << user.name
user2 = User.create! :name => 'Second User', :email => 'user2@example.com', :password => 'please1234', :password_confirmation => 'please1234'
puts 'New user created: ' << user2.name

puts 'PUTTING SOME CDs ON SHELF'
cd = Musiccd.create! :title => 'The Wall', :author => 'Pink Floyd', :release_year => '1979', :price => 16.99, :description => 'The Wall is the eleventh studio album by the English progressive rock band Pink Floyd. It is the last studio album released with the classic lineup of Gilmour, Waters, Wright and Mason before keyboardist Richard Wright left the band.', :cover_url => 'http://upload.wikimedia.org/wikipedia/en/thumb/1/13/PinkFloydWallCoverOriginalNoText.jpg/220px-PinkFloydWallCoverOriginalNoText.jpg'
puts 'New CD added to collection: ' << cd.title << ' by ' << cd.author
cd = Musiccd.create! :title => 'Discochlosta', :author => 'Bracia Figo Fagot', :release_year => '2014', :price => 20.99, :description => ' trzeci studyjny album zespołu Bracia Figo Fagot, który został wydany 20 października 2014 r. Płyta zawiera 12 utworów.', :cover_url => 'http://gfx.dlastudenta.pl/photos/muzyka/artysci/b/bracia_figo_fagot/discochlosta.jpg'
puts 'New CD added to collection: ' << cd.title << ' by ' << cd.author
cd = Musiccd.create! :title => 'No line on the horizon', :author => 'U2', :release_year => '2009', :price => 14.99, :description => 'No Line on the Horizon is the twelfth studio album by rock band U2. Released on 27 February 2009, it was the band\'s first record since How to Dismantle an Atomic Bomb (2004), marking the longest gap between studio albums of U2\'s career to that point.', :cover_url => 'http://upload.wikimedia.org/wikipedia/en/5/53/NoLineU2Promo.jpg'
puts 'New CD added to collection: ' << cd.title << ' by ' << cd.author
cd = Musiccd.create! :title => 'Mutter', :author => 'Rammstein', :release_year => '2001', :price => 10.99, :description => 'Mutter (German for "mother") is the third album by German Neue Deutsche Härte band Rammstein. It was released on 2 April 2001 through Motor Music. The album\'s cover image is a photograph of a dead fetus, which was taken by Daniel & Geo Fuchs.', :cover_url => 'http://upload.wikimedia.org/wikipedia/en/thumb/5/5e/Mutter.jpg/220px-Mutter.jpg'
puts 'New CD added to collection: ' << cd.title << ' by ' << cd.author
cd = Musiccd.create! :title => 'Herzeleid', :author => 'Rammstein', :release_year => '1995', :price => 8.99, :description => 'Herzeleid is the debut album by German Neue Deutsche Härte band Rammstein. It was released on 29 September 1995. The album\'s original cover depicted the band members\' upper bodies without clothing.', :cover_url => 'http://upload.wikimedia.org/wikipedia/en/thumb/1/1f/Rammstein_Herzeleid_cover.jpg/220px-Rammstein_Herzeleid_cover.jpg'
puts 'New CD added to collection: ' << cd.title << ' by ' << cd.author
cd = Musiccd.create! :title => 'Królowie życia', :author => 'Gang Albanii', :release_year => '2015', :price => 25.99, :description => 'W ponad dwudziestoletniej historii polskiego rapu tworzono już wiele supergrup. Niepowtarzalny Gang Albanii jest tylko jeden. "Dwóch chorych MC i chory producent" – mówią o sobie założyciele składu.', :cover_url => 'http://preorder.pl/img/imagecache/31001-32000/467x463_product_media_31001-32000_Towar_31650_48289.jpg'
puts 'New CD added to collection: ' << cd.title << ' by ' << cd.author
cd = Musiccd.create! :title => 'Steal this album!', :author => 'System of a Down', :release_year => '2002', :price => 13.50, :description => 'Steal This Album! is the third studio album by Armenian American rock band System of a Down, released on November 26, 2002, on American Recordings.', :cover_url => 'http://upload.wikimedia.org/wikipedia/en/thumb/4/45/StealThisAlbum.png/220px-StealThisAlbum.png'
puts 'New CD added to collection: ' << cd.title << ' by ' << cd.author
cd = Musiccd.create! :title => 'Expectation', :author => 'Girl\'s Day', :release_year => '2013', :price => 85.99, :description => 'Expectation (기대; Gidae) is the first studio album by South Korean girl group Girl\'s Day. The album was released on March 14, 2013, with the song "Expectation" (기대해; Gidaehae) serving as the promotional track.', :cover_url => 'http://upload.wikimedia.org/wikipedia/en/thumb/e/e9/Girl%27s_Day_-_Expectation_album_cover.jpeg/220px-Girl%27s_Day_-_Expectation_album_cover.jpeg'
puts 'New CD added to collection: ' << cd.title << ' by ' << cd.author
cd = Musiccd.create! :title => 'PsyFive', :author => 'Psy', :release_year => '2010', :price => 2.99, :description => 'PsyFive is the fifth album by South Korean singer Psy. The album was released on October 20, 2010. The album contains 12 songs. The album was also released worldwide through iTunes. It is Psy\'s debut album for YG Entertainment.', :cover_url => 'http://upload.wikimedia.org/wikipedia/en/thumb/0/03/PSYfive_Cover.jpg/220px-PSYfive_Cover.jpg'
puts 'New CD added to collection: ' << cd.title << ' by ' << cd.author
cd = Musiccd.create! :title => '1989', :author => 'Taylor Swift', :release_year => '2014', :price => 12.99, :description => '1989 is the fifth studio album by American singer-songwriter Taylor Swift. It was released on October 27, 2014 through Big Machine Records. 1989 is a pop album that was described by Swift herself as her "first documented official pop album."', :cover_url => 'http://upload.wikimedia.org/wikipedia/en/thumb/f/f6/Taylor_Swift_-_1989.png/220px-Taylor_Swift_-_1989.png'
puts 'New CD added to collection: ' << cd.title << ' by ' << cd.author
