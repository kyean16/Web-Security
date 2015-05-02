module StaticPagesHelper

	#Return a speficic Stat depending on the number num. Returns sentence
	def randomStat(num)
		case num
		when 1
			"Total Number of Books:"
		when 2
			"Total Number of Users:"
		when 3
			"Average Number of Books read by Users:"
		when 4
			"Favorite genre of book:"
		else
			sentence = "One"
		end
	end
end
