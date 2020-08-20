require "bbc/week/version"
require 'date'

module BBC
  module Week
    def self.included(klass)
      klass.extend(ClassMethods)
    end

    module ClassMethods
      # Create a date object from a BBC week date
      def bbc_week(year, week, day)
        # The week that contains Jan 4 is the first week with the majority
        # of days in that year (regardless of what day of week is start of week)
        jan4 = Date.new(year, 1, 4)

        # Next calculate the first day of the first week of that year
        first = jan4 - ((jan4.wday + 1) % 7)

        # Then add on the days and weeks
        first + ((week - 1) * 7) + day - 1
      end
    end

    # Convert a Date object to BBC Week
    def bbc_week
      adjustment = 3 - ((self.wday + 1) % 7)
      tuesday = self + adjustment
      [tuesday.year, ((tuesday.yday - 1) / 7) + 1, 4 - adjustment]
    end
  end
end

class Date
  include BBC::Week
end
