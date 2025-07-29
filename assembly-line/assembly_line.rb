class AssemblyLine
  BASE_HOURLY_RATE = 221
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    hourly_rate = @speed * BASE_HOURLY_RATE
    if (@speed <= 4)
      return hourly_rate
    elsif (@speed <= 8)
      return hourly_rate * 0.9
    elsif (@speed == 9)
      return hourly_rate * 0.8
    elsif (@speed == 10)
      return hourly_rate * 0.77
    end
  end

  def working_items_per_minute
    return (production_rate_per_hour() / 60).to_i()
  end
end
