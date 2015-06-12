class Timer
  attr_accessor :seconds
  attr_accessor :time_string

  def initialize
    @seconds = 0
    @time_string = "00:00:00"
  end

  def time_string
    hours = format(@seconds / 3600)
    minutes = format((@seconds / 60) % 60)
    seconds = format(@seconds % 60)
    "#{hours}:#{minutes}:#{seconds}"
  end

  def format(value)
    value = value.to_s
    if value.length == 1
      value.insert(0, "0")
    else
      value
    end
  end

end
