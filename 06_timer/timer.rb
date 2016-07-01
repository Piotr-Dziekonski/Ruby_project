class Timer
  attr_accessor :seconds

  def initialize
  	@seconds = 0
  end

	def add_zero (input)
			if input < 10
				input = '0' + input.to_s 
			end
			input.to_s
	end

  def time_string
	hours = @seconds / 3600
	minutes = (@seconds % 3600) / 60
	seconds = @seconds % 60

	"#{add_zero(hours)}:#{add_zero(minutes)}:#{add_zero(seconds)}"	
  end
end
