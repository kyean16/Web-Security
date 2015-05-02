module StaticPagesHelper

	#Return a specific Stat depending on the number num. Returns sentence
	def randomStatSentence(num)
		stats = [
			"Total Number of Books:",
			"Total Number of Users:",
			"Average Number of Books read by Users:",
			"Favorite genre of book:",
		]
		stats.at(num)
	end

	#Return a specific Stat depending on the number  num. Return stat
	def randomStat(num)
		stats = [
			Book.all.count,
			User.all.count,
			10,
			"Fiction",
		]
		stats.at(num)
	end

	#Generates a random number, calls randomStats with the random number created and return statement
	def num
	  	random = rand(@arr.size)
	  	@statSentence = randomStatSentence(@arr.at(random));
	  	@stat = randomStat(@arr.at(random));
	  	@arr.delete_at(random)
	end
end
