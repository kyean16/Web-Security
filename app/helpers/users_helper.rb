module UsersHelper
	def gravatar_for(user)
		gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
		gravatar_url =
		"https://secure.gravatar.com/avatar/#{gravatar_id}"
		image_tag(gravatar_url, alt:user.name, class: "gravatar")
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
end
