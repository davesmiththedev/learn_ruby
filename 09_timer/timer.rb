class Timer
	attr_reader :seconds

	def initialize(seconds=0)
	  @seconds = seconds
	end

	def seconds= seconds
		@seconds = seconds
	end

	def time_string
		#Calc and format seconds
		seconds = padded(@seconds % 60)
		
		#Calc and format minutes
		minutes = padded((@seconds / 60) % 60)

		#Calc and format hours
		hours = padded((@seconds / 60) / 60)

		#return the merged results
		hours + ":" + minutes + ":" + seconds
	end

	def padded number
		number = number.to_s
		if (number.length < 2)
			#pad with a 0
			number = "0"+number
		end
		#return the number
		number
	end
end