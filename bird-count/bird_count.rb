class BirdCount
  def self.last_week
    return [0, 2, 5, 3, 7, 8, 4]
  end

  def initialize(birds_per_day)
    @counts = birds_per_day
  end

  def yesterday
    return @counts[-2]
  end

  def total
    return @counts.sum
  end

  def busy_days
    return @counts.count { | count | count >= 5 }
  end

  def day_without_birds?
    return @counts.any? { | count | count <= 0 }
  end
end
