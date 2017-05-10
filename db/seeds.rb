


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
