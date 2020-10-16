SECONDS_IN_MINUTE = 60
MINUTES_IN_HOUR = 60
HOURS_IN_DAY = 24
DAYS_IN_YEAR = 365
TIME_DIVISORS = [SECONDS_IN_MINUTE, MINUTES_IN_HOUR, HOURS_IN_DAY, DAYS_IN_YEAR]
TIME_TAGS = ["second", "minute", "hour", "day", "year"].reverse

def plural_format(value, tag)
  if value == 1 
    return value.to_s + " " + tag
  else
    return value.to_s + " " + tag + "s"
  end
end

def format_duration(seconds)
  return "now" if seconds == 0
  time = seconds
  time_array = []
  output_string = []
  0.upto(3) do |index|
    time, time_array[index] = time.divmod(TIME_DIVISORS[index])
  end
  [time_array, time].flatten.reverse.each_with_index do |unit, index|
    if unit != 0
      output_string << plural_format(unit, TIME_TAGS[index])
    end
  end
  if output_string.length > 1
    output_string[-2] += ' and ' + output_string[-1]
    output_string.pop
  end
  output_string.join(", ")
end

p format_duration(1010121)

def format_duration2(seconds)
  return "now" if seconds.zero?

  durations = {
    years: 31_536_000,
    days:      86_400,
    hours:      3_600,
    minutes:       60,
    seconds:        1
  }

  singularize = ->((k, v)) { "#{v} #{v == 1 ? k[0..-2] : k}" }

  units = durations.each_with_object({}) do |(name, duration), units|
    units[name], seconds = seconds.divmod(duration)
  end.reject { |k, v| v.zero? }.map(&singularize)

  last = units.pop
  return last if units.empty?
  units.join(", ") << " and #{last}"
end