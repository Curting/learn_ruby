class Timer
  attr_accessor :seconds

  def initialize
  	@seconds = 0
  end

  def time_string
  	time = @seconds

  	# Find hour, min and seconds. Reduce time by each time-element. 
  	hour = time / 3600
  	time -= hour * 3600

  	min = time / 60
  	time -= min * 60

  	sec = time % 60

  	# Make sure that 1 become :01 and 12 become :12 etc.
  	if hour.between?(0, 9) then hour = "0#{hour}" end
  	if min.between?(0, 9) then min = "0#{min}" end
  	if sec.between?(0, 9) then sec = "0#{sec}" end

  	# Return in format: "hour:min:sec". Example: 01:23:45.
  	return "#{hour}:#{min}:#{sec}"
  end
end
