class Timer
	attr_reader :time_string
	attr_accessor :seconds

	def initialize
		@seconds = 0
		@time_string = "00:00:00"
	end

	def seconds=(seconds)
		@seconds = seconds

		hours   = (seconds / 3600)
		minutes = (seconds / 60) % 60
		seconds = (seconds % 60)

		@time_string = "#{padded(hours)}:#{padded(minutes)}:#{padded(seconds)}"
	end

	private

	def padded(time)
		if time < 10
			return "0#{time}"
		else
			return time.to_s
		end
	end
end
