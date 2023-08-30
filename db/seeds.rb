require "open-uri"

Journal.destroy_all
puts "Destroyed Journals"

Prompt.destroy_all
puts "Destroyed Prompts"

Logbook.destroy_all
puts "Destroyed Logbooks"

User.destroy_all
puts "Destroyed Users"

Emoji.destroy_all
puts "Destroyed Emojis"

Playlist.destroy_all
puts "Destroyed Playlists"

Recommendation.destroy_all
puts "Destroyed Recommendations"

diogo = User.new(email: "diogo@gmail.com", password: "123456")
diogo.save

dani = User.new(email: "dani@gmail.com", password: "123456")
dani.save

james = User.new(email: "james@gmail.com", password: "123456")
james.save

puts "--------------Users created ------------------"


file = URI.open("https://www.pngitem.com/pimgs/m/0-9669_happy-emoji-png-high-quality-image-transparent-background.png")
happy = Emoji.new(title: "Happy")
happy.photo.attach(io: file, filename: "happy.png", content_type: "image/png")
happy.save


file = URI.open("https://clipart-library.com/new_gallery/5-56430_shy-emoji-png-transparent-sad-face-emoji.png")
content = Emoji.new(title: "Content")
content.photo.attach(io: file, filename: "content.png", content_type: "image/png")
content.save


file = URI.open("https://emojiisland.com/cdn/shop/products/Neutral_Face_Emoji_1024x1024.png?v=1571606037.png")
neutral = Emoji.new(title: "Apathetic")
neutral.photo.attach(io: file, filename: "neutral.png", content_type: "image/png")
neutral.save


file = URI.open("https://www.pngfind.com/pngs/m/318-3187321_emoji-emojis-iosemojis-iosemoji-iphone-iphoneemoji-shocked-emoji.png")
sad = Emoji.new(title: "Sad")
sad.photo.attach(io: file, filename: "sad.png", content_type: "image/png")
sad.save


file = URI.open("https://freepngimg.com/save/36860-sad-emoji-transparent-image.png")
terrible = Emoji.new(title: "Terrible")
terrible.photo.attach(io: file, filename: "terrible.png", content_type: "image/png")
terrible.save

puts "--------------Emojis created ------------------"



logbook1 = Logbook.new(summary: "Summary Here", date: Date.new)
logbook1.emoji = happy
logbook1.user = diogo
logbook1.save



puts "--------------Logbooks created ------------------"


prompt1 = Prompt.create(content: "Name 5 things...")
prompt2 = Prompt.create(content: "Name 10 things...")
prompt3 = Prompt.create(content: "Name 15 things...")

puts "--------------Prompts created ------------------"


journal1 = Journal.new(content: "blah blah blah", date: Date.new)
journal1.logbook = logbook1
journal1.prompt = prompt1
journal1.save

puts "--------------Journal created ------------------"

playlist = Playlist.new(title: "sad shit", url: "https://open.spotify.com/playlist/37i9dQZF1DX12YIlzNkccL?si=1e453bd87fd24247", image_url: "https://static.wikia.nocookie.net/pianista-superb/images/9/9a/Beethoven.png/revision/latest?cb%3D20200725110454&tbnid=cRwfhc9opXEFgM&vet=1&imgrefurl=https://pianista-superb.fandom.com/wiki/Ludwig_van_Beethoven&docid=sDTOw3EXIpcsdM&w=382&h=492&source=sh/x/im/m5/1&shem=uvafe4")
playlist.emoji = sad
playlist.save

puts "--------------Playlist created ------------------"

recommendation = Recommendation.new
recommendation.playlist_url = playlist
recommendation.logbook = logbook1
recommendation.save


puts "|||||||||||||||||| DB seeded ||||||||||||||||||||"
