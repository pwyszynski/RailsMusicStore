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