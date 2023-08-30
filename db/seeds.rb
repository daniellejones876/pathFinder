require "open-uri"

Logbook.destroy_all
puts "Destroyed Logbooks"

User.destroy_all
puts "Destroyed Users"

Emoji.destroy_all
puts "Destroyed Emojis"




diogo = User.new(email: "diogo@gmail.com", password: "123456")
diogo.save

dani = User.new(email: "dani@gmail.com", password: "123456")
dani.save

james = User.new(email: "james@gmail.com", password: "123456")
james.save


# file = URI.open("https://www.clipartmax.com/middle/m2i8H7b1K9N4K9m2_adult-emoji-flirty-emoticons-for-ios-free-download-smiling-emoji.png")
happy = Emoji.new(title: "Happy")
# happy.photo.attach(io: file, filename: "happy.png", content_type: "image/png")
happy.save


# file = URI.open("https://www.clipartmax.com/middle/m2i8K9N4d3d3d3K9_clipart-inspiring-design-ideas-sad-face-photos-emoji-sad-emoji-png-transparent.png")
# content = Emoji.new(title: "Content")
# content.photo.attach(io: file, filename: "content.png", content_type: "image/png")
# content.save


# file = URI.open("https://www.pngitem.com/pimgs/m/50-500914_neutral-emoji-png-transparent-background-neutral-emoji-png.png")
# neutral = Emoji.new(title: "Apathetic")
# neutral.photo.attach(io: file, filename: "neutral.png", content_type: "image/png")
# neutral.save


# file = URI.open("https://www.clipartmax.com/middle/m2i8A0A0d3b1d3i8_and-so-a-sad-face-on-a-message-may-be-an-indication.png")
# sad = Emoji.new(title: "Sad")
# sad.photo.attach(io: file, filename: "sad.png", content_type: "image/png")
# sad.save


# file = URI.open("https://www.clipartmax.com/middle/m2H7H7H7H7G6A0N4_whatsapp-sad-emoji.png")
# terrible = Emoji.new(title: "Terrible")
# terrible.photo.attach(io: file, filename: "terrible.png", content_type: "image/png")
# terrible.save


logbook1 = Logbook.new(summary: "Summary Here", date: Date.new)
logbook1.emoji = happy
logbook1.user = diogo
logbook.save
