require 'date'

class Range
  def intersection(other)
    return nil if max < other.begin || other.max < self.begin
    [self.begin, other.begin].max..[max, other.max].min
  end
  alias_method :&, :intersection
end

class Date
  def self.today
    Date.current
  end
  def self.tomorrow
    Date.current + 1.day
  end
  def self.yesterday
    Date.current - 1.day
  end
end
