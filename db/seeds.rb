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


puts "--------------"
puts "Creating users..."


diogo = User.new(email: "diogo@gmail.com", password: "123456", first_name: "Diogo", last_name: "Pinto")
diogo.save

dani = User.new(email: "dani@gmail.com", password: "123456", first_name: "Dani", last_name: "Jones")
dani.save

james = User.new(email: "james@gmail.com", password: "123456", first_name: "James", last_name: "Galler")
james.save


puts "Users created!"
puts "Creating emojis..."


happy = Emoji.new(title: "Happy", image: "<i class='fa-solid fa-face-smile-beam' style='color: #ccdbdc;'></i>", value: 5)
happy.save

content = Emoji.new(title: "Content", image: "<i class='fa-solid fa-face-smile' style='color: #ccdbdc;'></i>", value: 4)
content.save

neutral = Emoji.new(title: "Apathetic", image: "<i class='fa-solid fa-face-meh' style='color: #ccdbdc;'></i>", value: 3)
neutral.save

sad = Emoji.new(title: "Sad", image: "<i class='fa-solid fa-face-frown-open' style='color: #ccdbdc;'></i>", value: 2)
sad.save

terrible = Emoji.new(title: "Terrible", image: "<i class='fa-solid fa-face-frown' style='color: #ccdbdc;'></i>", value: 1)
terrible.save

puts "Emojis created!"
puts "Creating logbooks..."


logbook1 = Logbook.new(summary: "Summary Here")
logbook1.emoji = happy
logbook1.user = diogo
logbook1.save


puts "Logbooks created!"
puts "Creating prompts..."


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
prompt7 = Prompt.new(content: "Write about one positive thing that happened today.")
prompt7.save
prompt8 = Prompt.new(content: "Choose 3 people to say thanks today. Write about why you are thankful to them.")
prompt8.save
prompt9 = Prompt.new(content: "Take a deep breath and feel grateful to be who you are, right where you are.")
prompt9.save
prompt10 = Prompt.new(content: "What is something that was hard to do but you did it anyway?")
prompt10.save
prompt11 = Prompt.new(content: "How does practicing gratitude impact your thoughts?")
prompt11.save
prompt12 = Prompt.new(content: "Think about the people you don't know that help make your life easier.")
prompt12.save
prompt13 = Prompt.new(content: "When was the last time someone expressed gratitude to you?")
prompt13.save
prompt14 = Prompt.new(content: "What is something that always gives you happiness?")
prompt14.save
prompt15 = Prompt.new(content: "Pick a random photo, and write about why you're grateful for that memory.")
prompt15.save
prompt16 = Prompt.new(content: "What do you love most about the time you are living in?")
prompt16.save
prompt17 = Prompt.new(content: "List 3 things that you have now that you didn't have five years ago.")
prompt17.save
prompt18 = Prompt.new(content: "List 5 things in your bedroom that you are grateful for.")
prompt18.save
prompt19 = Prompt.new(content: "Write about someone who was kind to you recently.")
prompt19.save
prompt20 = Prompt.new(content: "Write about a time you were grateful for something a loved one did for you.")
prompt20.save
prompt21 = Prompt.new(content: "Write a thank you note to yourself.")
prompt21.save
prompt22 = Prompt.new(content: "What is a quality in yourself that has helped you through the years?")
prompt22.save
prompt23 = Prompt.new(content: "Write about the change that you want to bring in your life.")
prompt23.save
prompt24 = Prompt.new(content: "Write the words you need to hear from a loved one.")
prompt24.save
prompt25 = Prompt.new(content: "Write about one thing that you like about yourself.")
prompt25.save
prompt26 = Prompt.new(content: "Given the choice, where would you want to be right now?")
prompt26.save
prompt27 = Prompt.new(content: "Write about an achievement that you are proud of.")
prompt27.save
prompt28 = Prompt.new(content: "What do you wish other people knew about you?")
prompt28.save
prompt29 = Prompt.new(content: "Write about an activity that helps you feel better.")
prompt29.save
prompt30 = Prompt.new(content: "Reflect on a day when you felt really happy.")
prompt30.save
prompt31 = Prompt.new(content: "What is your idea of a happy life?")
prompt31.save
prompt32 = Prompt.new(content: "Describe your dream home in detail.")
prompt32.save
prompt33 = Prompt.new(content: "Describe something that you are looking forward in your life.")
prompt33.save
prompt34 = Prompt.new(content: "What excites you about the future?")
prompt34.save
prompt35 = Prompt.new(content: "Write down 10 things on your bucket list.")
prompt35.save


puts "Prompts created!"
puts "Creating journals..."


journal1 = Journal.new(content: "blah blah blah")
journal1.logbook = logbook1
journal1.prompt = prompt8
journal1.save


puts "Journals created!"
puts "Creating playlists..."


playlist1 = Playlist.new(
  title: "80s Mix",
  url: "https://open.spotify.com/playlist/37i9dQZF1EQqZlCxLOykhS?si=818f3c39dcd1440f&nd=1",
  image_url: '<iframe style="border-radius:12px" src="https://open.spotify.com/embed/playlist/37i9dQZF1EQqZlCxLOykhS?utm_source=generator" width="100%" height="152" frameBorder="0" allowfullscreen="" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture" loading="lazy"></iframe>'
)
playlist1.emoji = happy
playlist1.save

playlist2 = Playlist.new(
  title: "Morning Commute",
  url: "https://open.spotify.com/playlist/37i9dQZF1DX2MyUCsl25eb?si=593853ab03954a09&nd=1",
  image_url: '<iframe style="border-radius:12px" src="https://open.spotify.com/embed/playlist/37i9dQZF1DX2MyUCsl25eb?utm_source=generator" width="100%" height="152" frameBorder="0" allowfullscreen="" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture" loading="lazy"></iframe>'
)
playlist2.emoji = content
playlist2.save

playlist3 = Playlist.new(
  title: "Mood Booster",
  url: "https://open.spotify.com/playlist/37i9dQZF1DX3rxVfibe1L0?si=5bdc022175cc43bf&nd=1",
  image_url: '<iframe style="border-radius:12px" src="https://open.spotify.com/embed/playlist/37i9dQZF1DX3rxVfibe1L0?utm_source=generator" width="100%" height="152" frameBorder="0" allowfullscreen="" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture" loading="lazy"></iframe>'
)
playlist3.emoji = neutral
playlist3.save

playlist4 = Playlist.new(
  title: "Rock This",
  url: "https://open.spotify.com/playlist/37i9dQZF1DXcF6B6QPhFDv?",
  image_url: '<iframe style="border-radius:12px" src="https://open.spotify.com/embed/playlist/37i9dQZF1DXcF6B6QPhFDv?utm_source=generator" width="100%" height="152" frameBorder="0" allowfullscreen="" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture" loading="lazy"></iframe>'
)
playlist4.emoji = sad
playlist4.save

playlist5 = Playlist.new(
  title: "Beautiful Sad Songs",
  url: "https://open.spotify.com/playlist/6mGZqLAUce7VxRqIwIBpGm",
  image_url: '<iframe style="border-radius:12px" src="https://open.spotify.com/embed/playlist/6mGZqLAUce7VxRqIwIBpGm?utm_source=generator" width="100%" height="152" frameBorder="0" allowfullscreen="" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture" loading="lazy"></iframe>'
)
playlist5.emoji = terrible
playlist5.save

playlist6 = Playlist.new(
  title: "Guilty Pleasures",
  url: "https://open.spotify.com/playlist/37i9dQZF1DX4pUKG1kS0Ac?si=739f288ac7524418&nd=1",
  image_url: '<iframe style="border-radius:12px" src="https://open.spotify.com/embed/playlist/37i9dQZF1DX4pUKG1kS0Ac?utm_source=generator" width="100%" height="152" frameBorder="0" allowfullscreen="" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture" loading="lazy"></iframe>'
)
playlist6.emoji = happy
playlist6.save

playlist7 = Playlist.new(
  title: "The ultimate feel good playlist",
  url: "https://open.spotify.com/playlist/2E6fOraA1wbcvsCxHL3F1E",
  image_url: '<iframe style="border-radius:12px" src="https://open.spotify.com/embed/playlist/2E6fOraA1wbcvsCxHL3F1E?utm_source=generator" width="100%" height="152" frameBorder="0" allowfullscreen="" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture" loading="lazy"></iframe>'
)
playlist7.emoji = content
playlist7.save

playlist8 = Playlist.new(
  title: "Confidence Boost",
  url: "https://open.spotify.com/playlist/37i9dQZF1DX4fpCWaHOned?si=ks5UEPWzQniFB-cUF6p9pw&nd=1",
  image_url: '<iframe style="border-radius:12px" src="https://open.spotify.com/embed/playlist/37i9dQZF1DX4fpCWaHOned?utm_source=generator" width="100%" height="152" frameBorder="0" allowfullscreen="" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture" loading="lazy"></iframe>'
)
playlist8.emoji = neutral
playlist8.save

playlist9 = Playlist.new(
  title: "Sad Songs",
  url: "https://open.spotify.com/playlist/37i9dQZF1DX7qK8ma5wgG1",
  image_url: '<iframe style="border-radius:12px" src="https://open.spotify.com/embed/playlist/37i9dQZF1DX7qK8ma5wgG1?utm_source=generator" width="100%" height="152" frameBorder="0" allowfullscreen="" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture" loading="lazy"></iframe>'
)
playlist9.emoji = sad
playlist9.save

playlist10 = Playlist.new(
  title: "Sad Feeling",
  url: "https://open.spotify.com/playlist/619TOVyXFh6QmvWvESFGVp",
  image_url: '<iframe style="border-radius:12px" src="https://open.spotify.com/embed/playlist/619TOVyXFh6QmvWvESFGVp?utm_source=generator" width="100%" height="152" frameBorder="0" allowfullscreen="" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture" loading="lazy"></iframe>'
)
playlist10.emoji = terrible
playlist10.save

playlist11 = Playlist.new(
  title: "The Ultimate Happy Playlist",
  url: "https://open.spotify.com/playlist/1llkez7kiZtBeOw5UjFlJq",
  image_url: '<iframe style="border-radius:12px" src="https://open.spotify.com/embed/playlist/1llkez7kiZtBeOw5UjFlJq?utm_source=generator" width="100%" height="152" frameBorder="0" allowfullscreen="" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture" loading="lazy"></iframe>'
)
playlist11.emoji = happy
playlist11.save

playlist12 = Playlist.new(
  title: "Feeling Good",
  url: "https://open.spotify.com/playlist/37i9dQZF1DX7xOpGPUVNE5",
  image_url: '<iframe style="border-radius:12px" src="https://open.spotify.com/embed/playlist/37i9dQZF1DX7xOpGPUVNE5?utm_source=generator" width="100%" height="152" frameBorder="0" allowfullscreen="" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture" loading="lazy"></iframe>'
)
playlist12.emoji = content
playlist12.save

playlist13 = Playlist.new(
  title: "Songs to Sing in the Shower",
  url: "https://open.spotify.com/playlist/37i9dQZF1DWSqmBTGDYngZ?si=ak-dOzw_Rc-I2MesqTCmLg&nd=1",
  image_url: '<iframe style="border-radius:12px" src="https://open.spotify.com/embed/playlist/37i9dQZF1DWSqmBTGDYngZ?utm_source=generator" width="100%" height="152" frameBorder="0" allowfullscreen="" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture" loading="lazy"></iframe>'
)
playlist13.emoji = neutral
playlist13.save

playlist14 = Playlist.new(
  title: "sad 2023",
  url: "https://open.spotify.com/playlist/37i9dQZF1DWZqdNJSufucb",
  image_url: '<iframe style="border-radius:12px" src="https://open.spotify.com/embed/playlist/37i9dQZF1DWZqdNJSufucb?utm_source=generator" width="100%" height="152" frameBorder="0" allowfullscreen="" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture" loading="lazy"></iframe>'
)
playlist14.emoji = sad
playlist14.save

playlist15 = Playlist.new(
  title: "Sad Songs 🥺",
  url: "https://open.spotify.com/playlist/6nxPNnmSE0d5WlplUsa5L3",
  image_url: '<iframe style="border-radius:12px" src="https://open.spotify.com/embed/playlist/6nxPNnmSE0d5WlplUsa5L3?utm_source=generator" width="100%" height="152" frameBorder="0" allowfullscreen="" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture" loading="lazy"></iframe>'
)
playlist15.emoji = terrible
playlist15.save


puts "Playlists created!"
puts "Creating recommendations..."


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


puts "Recommendations created!"
puts "|||||||||||||||||| DB seeded ||||||||||||||||||||"
