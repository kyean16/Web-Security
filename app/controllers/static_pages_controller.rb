class StaticPagesController < ApplicationController
  def home
  	arr = [1, 2, 3, 4] #Number of options for stats
  	for i in 0..4
  		random = rand(arr.size)
  		if(i == 0)
  			@u1 = randomStat(arr.at(random))
  		elsif(i == 1)
  			@u2 = randomStat(arr.at(random))
  		elsif(i == 2)
   			@u3 = randomStat(arr.at(random))
  		elsif(i == 3)
  			@u4 = randomStat(arr.at(random))
  		end
  		arr.delete_at(random)
  	end
  end

  def help
  end

  def about
  end
  
end
