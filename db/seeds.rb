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


happy = Emoji.new(title: "Happy", image: "<i class='fa-solid fa-face-smile-beam' style='color: #9DB1DE;'></i>", value: 5)
happy.save

content = Emoji.new(title: "Content", image: "<i class='fa-solid fa-face-smile' style='color: #9DB1DE;'></i>", value: 4)
content.save


apathetic = Emoji.new(title: "Apathetic", image: "<i class='fa-solid fa-face-meh' style='color: #9DB1DE;'></i>", value: 3)
apathetic.save

sad = Emoji.new(title: "Sad", image: "<i class='fa-solid fa-face-frown-open' style='color: #9DB1DE;'></i>", value: 2)
sad.save

terrible = Emoji.new(title: "Terrible", image: "<i class='fa-solid fa-face-frown' style='color: #9DB1DE;'></i>", value: 1)
terrible.save

puts "Emojis created!"
puts "Creating logbooks..."


logbook1 = Logbook.new(
  summary: "Another day, another routine. I can't seem to muster any energy or interest in anything. It's like I'm stuck in a perpetual state of indifference, and I don't know how to break free.",
  date: "24 Aug 2023",
  time: "16:14"
)
logbook1.emoji = apathetic
logbook1.user = dani
logbook1.save

logbook2 = Logbook.new(
  summary: "Today was tough. I couldn't shake off this lingering sadness that weighed on my heart like a heavy stone. The world seemed a little dimmer, and I couldn't help but miss the days when things felt brighter.",
  date: "25 Aug 2023",
  time: "19:02"
)
logbook2.emoji = sad
logbook2.user = dani
logbook2.save

logbook3 = Logbook.new(
  summary: "Simplicity has its own charm. Today, I found contentment in the small things: a warm cup of cocoa, a cozy blanket, and the soothing sound of rain tapping on my window. Life is good.",
  date: "26 Aug 2023",
  time: "10:27"
)
logbook3.emoji = content
logbook3.user = dani
logbook3.save

logbook4 = Logbook.new(
  summary: "The tears wouldn't stop today. It felt like a storm of sadness had taken over, and I couldn't find shelter from it. I miss the days when the sun used to shine a little brighter.",
  date: "27 Aug 2023",
  time: "19:42"
)
logbook4.emoji = sad
logbook4.user = dani
logbook4.save

logbook5 = Logbook.new(
  summary: "The simple pleasures in life never cease to amaze me. Today, I watched a breathtaking sunset and felt at peace with the world. Sometimes, all you need is a moment to reflect and appreciate the beauty around you.",
  date: "28 Aug 2023",
  time: "08:56"
)
logbook5.emoji = content
logbook5.user = dani
logbook5.save

logbook6 = Logbook.new(
  summary: "Today was absolutely wonderful! I woke up to the warm rays of the sun streaming through my window, and I couldn't help but smile. I spent the day with my closest friends, laughing, sharing stories, and enjoying life's simple pleasures. It's moments like these that make me truly grateful for the beautiful people in my life.",
  date: "29 Aug 2023",
  time: "14:19"
)
logbook6.emoji = happy
logbook6.user = dani
logbook6.save

logbook7 = Logbook.new(
  summary: "I'm at my wit's end. Everything that could go wrong today did, and I'm left feeling defeated and exhausted. I can only hope that tomorrow brings a glimmer of hope in this sea of despair.",
  date: "30 Aug 2023",
  time: "21:33"
)
logbook7.emoji = sad
logbook7.user = dani
logbook7.save

logbook8 = Logbook.new(
  summary: "I'm in a perpetual state of meh. Nothing excites me, and I can't seem to find the motivation to change that. It's as if I'm drifting through life with no direction.",
  date: "31 Aug 2023",
  time: "12:05"
)
logbook8.emoji = apathetic
logbook8.user = dani
logbook8.save

logbook9 = Logbook.new(
  summary: "Today was another tough one. The world feels heavy, and I'm struggling to find a way to lighten the load. I long for the day when I can find some respite from this sadness.",
  date: "01 Sep 2023",
  time: "23:11"
)
logbook9.emoji = sad
logbook9.user = dani
logbook9.save

logbook10 = Logbook.new(
  summary: "I can't even put into words how awful today was. It was one disaster after another, and I felt like I was barely keeping my head above water. I can only hope for a better tomorrow.",
  date: "02 Sep 2023",
  time: "07:48"
)
logbook10.emoji = sad
logbook10.user = dani
logbook10.save

logbook11 = Logbook.new(
  summary: "Today has been a peaceful and content day. I found solace in the quiet moments, reading a good book and sipping on my favorite tea. There's something serene about the world when it's in perfect harmony, and I'm grateful for this sense of inner calm.",
  date: "03 Sep 2023",
  time: "18:22"
)
logbook11.emoji = content
logbook11.user = dani
logbook11.save

logbook12 = Logbook.new(
  summary: "I'm bursting with joy! Today, I received fantastic news that I've been eagerly waiting for. It feels like the universe is finally aligning in my favor, and I can't help but dance around with a huge grin on my face.",
  date: "04 Sep 2023",
  time: "09:37"
)
logbook12.emoji = happy
logbook12.user = dani
logbook12.save

logbook13 = Logbook.new(
  summary: "I can't seem to muster any enthusiasm today. Everything feels dull and mundane. I went through the motions, but nothing really registered.",
  date: "05 Sep 2023",
  time: "13:50"
)
logbook13.emoji = apathetic
logbook13.user = dani
logbook13.save

logbook14 = Logbook.new(
  summary: "I'm on top of the world today! The sun is shining, and I feel like I can conquer anything. Life is full of possibilities, and I'm excited to see where it takes me.",
  date: "06 Sep 2023",
  time: "20:29"
)
logbook14.emoji = happy
logbook14.user = dani
logbook14.save

logbook15 = Logbook.new(
  summary: "Today, I was on cloud nine! I accomplished something I've been working so hard towards, and the feeling of success is absolutely intoxicating. It's amazing what dedication and perseverance can achieve.",
  date: "07 Sep 2023",
  time: "11:03"
)
logbook15.emoji = happy
logbook15.user = dani
logbook15.save

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
playlist3.emoji = apathetic
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
playlist8.emoji = apathetic
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
playlist13.emoji = apathetic
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
puts "Creating books..."

book1 = Book.new(
  title: "The Rosie Project",
  url: "https://www.goodreads.com/book/show/16181775-the-rosie-project",
  image_url: "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1371651741i/16181775.jpg",
  author: "Graeme Simsion",
  description: "A heartwarming and humorous novel about a genetics professor's quest to find love."
)
book1.emoji = happy
book1.save

book2 = Book.new(
  title: "Eleanor Oliphant Is Completely Fine",
  url: "https://www.goodreads.com/book/show/35900387-eleanor-oliphant-is-completely-fine",
  image_url: "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1557858891i/35900387.jpg",
  author: "Gail Honeyman",
  description: "A heartwarming story of an eccentric woman's journey to self-discovery and friendship."
)
book2.emoji = happy
book2.save

book3 = Book.new(
  title: "Where'd You Go, Bernadette",
  url: "https://www.goodreads.com/ga/book/show/13526165",
  image_url: "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1338822317i/13526165.jpg",
  author: "Maria Semple",
  description: "A quirky and comedic novel about a woman's disappearance and her daughter's quest to find her."
)
book3.emoji = happy
book3.save

book4 = Book.new(
  title: "The Guernsey Literary and Potato Peel Pie Society",
  url: "https://www.goodreads.com/book/show/39832183-the-guernsey-literary-and-potato-peel-pie-society",
  image_url: "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1529026760i/39832183.jpg",
  author: "Mary Ann Shaffer and Annie Barrows",
  description: "An epistolary novel set in post-World War II England, exploring the power of literature to bring people together."
)
book4.emoji = content
book4.save

book5 = Book.new(
  title: "A Man Called Ove",
  url: "https://www.goodreads.com/book/show/18774964-a-man-called-ove",
  image_url: "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1405259930i/18774964.jpg",
  author: "Fredrik Backman",
  description: "A heartwarming and humorous tale of an elderly man who finds purpose in the unlikeliest of friendships."
)
book5.emoji = content
book5.save

book6 = Book.new(
  title: "The Alchemist",
  url: "https://www.goodreads.com/book/show/865.The_Alchemist",
  image_url: "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1483412266i/865.jpg",
  author: "Paulo Coelho",
  description: "A philosophical and spiritual journey in search of one's personal legend."
)
book6.emoji = content
book6.save

book7 = Book.new(
  title: "No Longer Human",
  url: "https://www.goodreads.com/book/show/194746.No_Longer_Human",
  image_url: "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1422638843i/194746.jpg",
  author: "Osamu Dazai",
  description: "A bleak portrayal of a man's descent into alienation and despair."
)
book7.emoji = apathetic
book7.save

book8 = Book.new(
  title: "The Stranger",
  url: "https://www.goodreads.com/book/show/49552.The_Stranger",
  image_url: "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1590930002i/49552.jpg",
  author: "Albert Camus",
  description: "A philosophical novel about a detached and emotionless man who commits a senseless murder."
)
book8.emoji = apathetic
book8.save

book9 = Book.new(
  title: "Fight Club",
  url: "https://www.goodreads.com/book/show/5759.Fight_Club",
  image_url: "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1357128997i/5759.jpg",
  author: "Chuck Palahniuk",
  description: "A dark and nihilistic exploration of modern masculinity and consumer culture."
)
book9.emoji = apathetic
book9.save

book10 = Book.new(
  title: "The Book Thief",
  url: "https://www.goodreads.com/book/show/19063.The_Book_Thief",
  image_url: "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1522157426i/19063.jpg",
  author: "Markus Zusak",
  description: "A moving story set in Nazi Germany, narrated by Death and centered around a young girl's love for books."
)
book10.emoji = sad
book10.save

book11 = Book.new(
  title: "Never Let Me Go",
  url: "https://www.goodreads.com/book/show/6334.Never_Let_Me_Go",
  image_url: "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1353048590i/6334.jpg",
  author: "Kazuo Ishiguro",
  description: "A poignant and dystopian tale of love and mortality set in a world where human clones exist."
)
book11.emoji = sad
book11.save

book12 = Book.new(
  title: "A Little Life",
  url: "https://www.goodreads.com/book/show/22822858-a-little-life",
  image_url: "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1446469353i/22822858.jpg",
  author: "Hanya Yanagihara",
  description: "An emotionally intense exploration of friendship, trauma, and suffering."
)
book12.emoji = sad
book12.save

book13 = Book.new(
  title: "The Road",
  url: "https://www.goodreads.com/book/show/6288.The_Road",
  image_url: "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1600241424i/6288.jpg",
  author: "Cormac McCarthy",
  description: "A bleak and post-apocalyptic journey of survival and despair."
)
book13.emoji = terrible
book13.save

book14 = Book.new(
  title: "In the Miso Soup",
  url: "https://www.goodreads.com/book/show/17810.In_the_Miso_Soup",
  image_url: "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1309282509i/17810.jpg",
  author: "Ryu Murakami",
  description: "A disturbing psychological thriller set in Tokyo, delving into the darker aspects of human nature."
)
book14.emoji = terrible
book14.save

book15 = Book.new(
  title: "American Gods",
  url: "https://www.goodreads.com/book/show/30165203-american-gods",
  image_url: "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1462924585i/30165203.jpg",
  author: "Neil Gaiman",
  description: "A dark and fantastical tale where ancient gods clash with modern deities in a world filled with mystery and danger."
)
book15.emoji = terrible
book15.save

puts "Books created!"
puts "|||||||||||||||||| DB seeded ||||||||||||||||||||"
