module UsersHelper
	def gravatar_for(user)
		gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
		gravatar_url =
		"https://secure.gravatar.com/avatar/#{gravatar_id}"
		image_tag(gravatar_url, alt:user.name, class: "gravatar", width:50)
	end 

	def randomFunFact()
		arr = [
			"Did you know that the First Superman Comic Book fetched $3.2M in 2014?",
			"As of 2008, Harry Potter books have sold over 400 million copies and have been translated into 67 languages!",
			"Kochikame is the longest running manga with more than 194 volumes under its belt",
			"Despite Peter Jackson movies, the Hobbit is only one book!",
			"The Lord of The Ring Trilogy is the first fantasy Movie to have an Oscar.",
			"In 1981, Catcher in the Rye was both the most censored book in the United States.",
			"Surprisingly, Lord of the Flies is not about Flies",
			"Twilight made a lof of money for a book slamme by critics.",
			"Did you know that books are old?",
			"I am Groot!",
			"Marvel was bought by Disney for $4 Billions!"]
		num = rand(arr.size);
		arr.at(num)
	end

	#Return a specific Stat depending on the number num. Returns sentence
	def randomStatSentenceUser(num)
		stats = [
			"Total Number of Books in your collection:",
			"Total Number of Book:",
			"Average Number of Books read by Users:",
			"Favorite genre of book:",
		]
		stats.at(num)
	end

	#Return a specific Stat depending on the number  num. Return stat
	def randomStatUser(num)
		if(@user != nil)
			stats = [
				@user.reads.all.count,
				User.all.count,
				10,
				"Fiction",
			]
			stats.at(num)
		end
	end

	#Generates a random number, calls randomStats with the random number created and return statement
	def numUser
	  	random = rand(@arr.size)
	  	@statSentence = randomStatSentenceUser(@arr.at(random));
	  	@stat = randomStatUser(@arr.at(random));
	  	@arr.delete_at(random)
	end

	#Creates an array with the list of Genre read
	def bookGenre
		arr =[]
		current_user.reads.each do |f|
			arr.push(Book.find_by_id(f.book_id).genre)
		end
		h = Hash.new(0)
			arr.each do |word|
			h[word] += 1
		end
		genre = h.sort_by{|word,count| count}
		genre = genre.reverse # Hash highest the genre picked the most

		arr2 =[]
		genre.each do |key,value|
			arr2.push(key)
		end
		if(arr2.size > 1)
			@popGenre = arr2.at(0)
		else
			@popGenre = "Adventure"
		end
	end

	#Creates an array with the list of Genre read
	def bookAuthor
		arr =[]
		current_user.reads.each do |f|
			book = Book.find_by_id(f.book_id)
			author = book.authorFirst + " " + book.authorLast
			arr.push(author)
		end
		@h = Hash.new(0)
			arr.each do |word|
			@h[word.to_sym] += 1
		end
		genre = @h.sort_by{|word,count| count}
		genre = genre.reverse # Hash highest the genre picked the most

		arr2 =[]
		genre.each do |key,value|
			arr2.push(key)
		end
		if(arr2.size > 1)
			@popAuthor = arr2.at(0)
		else
			@popAuthor = "Adventure"
		end
	end
end
