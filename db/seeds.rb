require "open-uri"
Recommendation.destroy_all
puts "Destroyed Recommendations"

Journal.destroy_all
puts "Destroyed Journals"

Logbook.destroy_all
puts "Destroyed Logbooks"

Prompt.destroy_all
puts "Destroyed Prompts"

User.destroy_all
puts "Destroyed Users"

Playlist.destroy_all
puts "Destroyed Playlists"

Emoji.destroy_all
puts "Destroyed Emojis"

diogo = User.new(email: "diogo@gmail.com", password: "123456", first_name: "Diogo", last_name: "Pinto")
diogo.save

dani = User.new(email: "dani@gmail.com", password: "123456", first_name: "Dani", last_name: "Jones")
dani.save

james = User.new(email: "james@gmail.com", password: "123456", first_name: "James", last_name: "Galler")
james.save

puts "--------------Users created ------------------"

happy = Emoji.new(title: "Happy", image: "<i class='fa-solid fa-face-smile-beam' style='color: #ccdbdc;'></i>")
happy.save

content = Emoji.new(title: "Content", image: "<i class='fa-solid fa-face-smile' style='color: #ccdbdc;'></i>")
content.save

neutral = Emoji.new(title: "Apathetic", image: "<i class='fa-solid fa-face-meh' style='color: #ccdbdc;'></i>")
neutral.save

sad = Emoji.new(title: "Sad", image: "<i class='fa-solid fa-face-frown-open' style='color: #ccdbdc;'></i>")
sad.save

terrible = Emoji.new(title: "Terrible", image: "<i class='fa-solid fa-face-frown' style='color: #ccdbdc;'></i>")
terrible.save

puts "--------------Emojis created ------------------"

logbook1 = Logbook.new(summary: "Summary Here")
logbook1.emoji = happy
logbook1.user = diogo
logbook1.save
puts "--------------Logbooks created ------------------"

prompt1 = Prompt.new(content: "Name 5 things you're grateful for today.")
prompt1.save
prompt2 = Prompt.new(content: "What advice did you come across or hear in the last few days that you are grateful for?")
prompt2.save
prompt3 = Prompt.new(content: "List 3 things that you love about nature.")
prompt3.save
prompt4 = Prompt.new(content: "What are a few aspects of modern technology that you love?")
prompt4.save
prompt5 = Prompt.new(content: "Express gratitude to the one who always makes you feel joyful.")
prompt5.save
prompt6 = Prompt.new(content: "Who are you most grateful for in your life?")
prompt6.save
prompt7 = Prompt.new(content: "Write one positive thing that happened today.")
prompt7.save
prompt8 = Prompt.new(content: "Choose 3 people to say thanks today. Write about why you are thankful to them.")
prompt8.save
prompt9 = Prompt.new(content: "Take a deep breath and feel grateful to be who you are, right where you are.")
prompt9.save
prompt10 = Prompt.new(content: "What is something that was hard to do but you did it anyway?")
prompt10.save

puts "--------------Prompts created ------------------"

journal1 = Journal.new(content: "blah blah blah")
journal1.logbook = logbook1
journal1.prompt = prompt8
journal1.save

puts "--------------Journals created ------------------"

playlist1 = Playlist.new(title: "Happy tunes", url: "https://open.spotify.com/playlist/37i9dQZF1DX12YIlzNkccL?si=1e453bd87fd24247", image_url: "https://static.wikia.nocookie.net/pianista-superb/images/9/9a/Beethoven.png/revision/latest?cb%3D20200725110454&tbnid=cRwfhc9opXEFgM&vet=1&imgrefurl=https://pianista-superb.fandom.com/wiki/Ludwig_van_Beethoven&docid=sDTOw3EXIpcsdM&w=382&h=492&source=sh/x/im/m5/1&shem=uvafe4")
playlist1.emoji = happy
playlist1.save

playlist2 = Playlist.new(title: "Nice tunes", url: "https://open.spotify.com/playlist/37i9dQZF1DX12YIlzNkccL?si=1e453bd87fd24247", image_url: "https://static.wikia.nocookie.net/pianista-superb/images/9/9a/Beethoven.png/revision/latest?cb%3D20200725110454&tbnid=cRwfhc9opXEFgM&vet=1&imgrefurl=https://pianista-superb.fandom.com/wiki/Ludwig_van_Beethoven&docid=sDTOw3EXIpcsdM&w=382&h=492&source=sh/x/im/m5/1&shem=uvafe4")
playlist2.emoji = content
playlist2.save

playlist3 = Playlist.new(title: "Neutral tunes", url: "https://open.spotify.com/playlist/37i9dQZF1DX12YIlzNkccL?si=1e453bd87fd24247", image_url: "https://static.wikia.nocookie.net/pianista-superb/images/9/9a/Beethoven.png/revision/latest?cb%3D20200725110454&tbnid=cRwfhc9opXEFgM&vet=1&imgrefurl=https://pianista-superb.fandom.com/wiki/Ludwig_van_Beethoven&docid=sDTOw3EXIpcsdM&w=382&h=492&source=sh/x/im/m5/1&shem=uvafe4")
playlist3.emoji = neutral
playlist3.save

playlist4 = Playlist.new(title: "Sad tunes", url: "https://open.spotify.com/playlist/37i9dQZF1DX12YIlzNkccL?si=1e453bd87fd24247", image_url: "https://static.wikia.nocookie.net/pianista-superb/images/9/9a/Beethoven.png/revision/latest?cb%3D20200725110454&tbnid=cRwfhc9opXEFgM&vet=1&imgrefurl=https://pianista-superb.fandom.com/wiki/Ludwig_van_Beethoven&docid=sDTOw3EXIpcsdM&w=382&h=492&source=sh/x/im/m5/1&shem=uvafe4")
playlist4.emoji = sad
playlist4.save

playlist5 = Playlist.new(title: "Terrible tunes", url: "https://open.spotify.com/playlist/37i9dQZF1DX12YIlzNkccL?si=1e453bd87fd24247", image_url: "https://static.wikia.nocookie.net/pianista-superb/images/9/9a/Beethoven.png/revision/latest?cb%3D20200725110454&tbnid=cRwfhc9opXEFgM&vet=1&imgrefurl=https://pianista-superb.fandom.com/wiki/Ludwig_van_Beethoven&docid=sDTOw3EXIpcsdM&w=382&h=492&source=sh/x/im/m5/1&shem=uvafe4")
playlist5.emoji = terrible
playlist5.save

puts "--------------Playlists created ------------------"

recommendation1 = Recommendation.new
recommendation1.playlist_url = playlist1
recommendation1.save

recommendation2 = Recommendation.new
recommendation2.playlist_url = playlist2
recommendation2.save

recommendation3 = Recommendation.new
recommendation3.playlist_url = playlist3
recommendation3.save

recommendation4 = Recommendation.new
recommendation4.playlist_url = playlist4
recommendation4.save

recommendation5 = Recommendation.new
recommendation5.playlist_url = playlist5
recommendation5.save

puts "|||||||||||||||||| DB seeded ||||||||||||||||||||"
