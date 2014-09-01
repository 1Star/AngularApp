# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Table: phones
# Fields: name, availability, battery, camera, connectivity, gps, infrared, display, touch_screen, flash, ram

# Table: phone_images
# Fields: url, phone_id
dell_streak = Phone.create name: 'Dell Streak 7', availability: 'T-Mobile', battery:'Lithium Ion (Li-Ion) (2780 mAH)',
				camera: 'Flash, Video', connectivity: 'Bluetooth 2.1', gps: true, infrared: false, display: 'Introducing Dell Streak 7. Share photos, videos and movies together.',
				touch_screen: true, flash: 16000, ram: 512
(0..4).each do |index|
	dell_streak.phone_images << PhoneImage.create(url: "dell-streak-7.#{index}.jpg")
end

dell_venue = Phone.create name: 'Dell Venue', availability: 'AT&T, KT, T-Mobile', battery:'Lithium Ion (Li-Ion) (1400 mAH)',
				camera: 'Flash, Video', connectivity: 'Bluetooth 2.1', gps: true, infrared: false, display: 'The Venue is the perfect one-touch, Smart Phone providing instant access to everything you love.',
				touch_screen: true, flash: 1000, ram: 512
(0..4).each do |index|
	dell_venue.phone_images << PhoneImage.create(url: "dell-venue.#{index}.jpg")
end

samsung_galaxy_tab = Phone.create name: 'Samsung Galaxy Tab', availability: 'AT&T, KT, T-Mobile, Verizon', battery:'Lithium Ion (Li-Ion) (4000 mAH)',
				camera: 'Flash, Video', connectivity: 'Bluetooth 3.0', gps: true, infrared: false, display: 'The Samsung Galaxy Tab\u2122, the tablet device that delivers enhanced capabilities with advanced mobility, has a large, perfectly sized, 7.0',
				touch_screen: true, flash: 16384, ram: 640
(0..6).each do |index|
	samsung_galaxy_tab.phone_images << PhoneImage.create(url: "samsung-galaxy-tab.#{index}.jpg")
end