Pin.create(title: "Eliminate Columbus Park Fencing", description: "The fencing should be removed and a pathway should be created to allow people to walk through the park. Right now, it is not integrated with the streetscape.", user_id: 1, image_file_name: "Screen_Shot_2017-04-20_at_1.28.12_PM.png", image_content_type: "image/png", image_file_size: 719821, image_updated_at: "2017-04-20 17:32:28")

  Pin.create(title: "A new Love Letters to Brooklyn", description: "Absolutely love the Stephen Powers Love Letters to Brooklyn piece and was so sad to hear it will be demolished. It would be wonderful if we could recreate this somewhere else.", user_id: 2, image_file_name: "Screen_Shot_2017-04-20_at_1.38.10_PM.png", image_content_type: "image/png", image_file_size: 1661875, image_updated_at: "2017-04-20 17:49:33")

 Pin.create(title: "More innovative design solutions”, description: "I appreciate how the security kiosks enhance the streetscape, instead of detract for it. We need more design solutions like this.", user_id: 3,  created_at: "2017-04-20 18:13:27",  image_file_name: "Screen_Shot_2017-04-20_at_2.10.05_PM.png", image_content_type: "image/png", image_file_size: 2235735, image_updated_at: "2017-04-20 18:13:27")


User.create(username: "BrooklynDad77", password: "catsaresupercool", email: "brooklyndad@aol.com")
User.create(username: "AHamilton", password: "youngscrappyhungry87", email: "aham@usa.gov", role: "user", admin_request: "submitted")
User.create(username: "SarahHilley", password: "thisismypassword", email: "sh77@gmail.com", role: "user", admin_request: "submitted")
User.create(username: "NativeNYC", password: "iwasbornhere49", email: "jerry@jerry.com", role: "user")
User.create(username: "EverythingBagel", password: "ilovebagels888", email: "bagelman@bagel.com", role: "user")
User.create(username: "InBrooklynHeights", password: "iliveinbrooklynheights", email: "neighbor@neighbor.com", role: "user")
User.create(username: "WWhitman", password: "fortgreenepark", email: "walty@brooklynpaper.com", role: "user")
User.create(username: "AngelicaS", password: "workwork", email: "satisfied@aol.com")
User.create(username: "NotTheBeep", password: "passwordpassword", email: "notthebeep@nyc.gov", role: "user", admin_request: "submitted")
User.create(username: "admin", password: "siobhany", email: "admin@admin.com", role: "admin")



Tag.create(name: "Parks")
Tag.create(name: "Public Spaces")
Tag.create(name: "Streets")
Tag.create(name: "Public Transportation")
Tag.create(name: "Sidewalks")
Tag.create(name: "Art")
Tag.create(name: "Architecture")
Tag.create(name: "History")
Tag.create(name: "Culture")

PinTag.create(pin_id: 1, tag_id: 1)
PinTag.create(pin_id: 1, tag_id: 2)
PinTag.create(pin_id: 1, tag_id: 3)
PinTag.create(pin_id: 2, tag_id: 6 )
PinTag.create(pin_id: 2, tag_id: 9)
PinTag.create(pin_id: 3, tag_id: 2 )
PinTag.create(pin_id: 3, tag_id: 5 )
PinTag.create(pin_id: 3, tag_id: 6 )

Comment.create(content: "I completely agree with you! This would look much better.", pin_id: 1, user_id: 4)
Comment.create(content: "I was just thinking the same thing last week when I was downtown.", pin_id: 2, user_id: 6)
Comment.create(content: "I have not noticed these before. I will look for them next time I am downtown.", pin_id: 3, user_id: 4)
