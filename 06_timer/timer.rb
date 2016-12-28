class Timer
  #write your code here

  def initialize
    @seconds = 0
  end


  def seconds
    @seconds
  end

  def seconds=(value)
    @seconds = value
  end

  def pad_time time
    if time < 10
      return '0' + time.to_s
    else
      return time.to_s
    end
  end

  def time_string
    a = @seconds
    hours = a/3600
    a = a % 3600
    minutes = a / 60
    a = a % 60
    seconds = a
    return pad_time(hours) + ":" + pad_time(minutes) + ":" + pad_time(seconds)
  end
end
