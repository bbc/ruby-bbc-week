require "test_helper"

TEST_CASES = {
  # Year starts on Saturday
  'Friday 31 December 2021' => [2021, 52, 7],
  'Saturday 1st January 2022' => [2022, 1, 1],
  'Sunday 2nd January 2022' => [2022, 1, 2],

  # Year starts on Sunday
  'Saturday 31st December 2016' => [2017, 1, 1],
  'Sunday 1st January 2017' => [2017, 1, 2],

  # Year starts on Monday
  'Friday 29th December 2017' => [2017, 52, 7],
  'Saturday 30th December 2017' => [2018, 1, 1],
  'Sunday 31st December 2017' => [2018, 1, 2],
  'Monday 1st January 2018' => [2018, 1, 3],

  # Year starts on Tuesday
  'Friday 28th December 2018' => [2018, 52, 7],
  'Saturday 29th December 2018' => [2019, 1, 1],
  'Sunday 30th December 2018' => [2019, 1, 2],
  'Monday 31st December 2018' => [2019, 1, 3],
  'Tuesday 1st January 2019' => [2019, 1, 4],

  # Year starts on Wednesday
  'Wednesday 1st January 2020' => [2019, 53, 5],
  'Thursday 2nd January 2020' => [2019, 53, 6],
  'Friday 3th January 2020' => [2019, 53, 7],
  'Saturday 4th January 2020' => [2020, 1, 1],
  'Sunday 5th January 2020' => [2020, 1, 2],

  # Year starts on Thursday
  'Thursday 1st January 2015' => [2014, 52, 6],
  'Friday 2nd January 2015' => [2014, 52, 7],
  'Saturday 3rd January 2015' => [2015, 1, 1],

   # Year starts on Friday
  'Friday 1st January 2016' => [2015, 52, 7],
  'Saturday 2nd January 2016' => [2016, 1, 1],
  'Sunday 3nd January 2016' => [2016, 1, 2],
}

class BBC::WeekTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::BBC::Week::VERSION
  end

  # Test converting to BBC Week
  def test_to_bbc_week
    TEST_CASES.each_pair do |datestr, bbc_week|
      date = Date.parse(datestr)
      assert_equal(bbc_week, date.bbc_week, "#{datestr} => #{bbc_week.inspect}")
    end
  end

  # Test converting from BBC Week
  def test_from_bbc_week
    TEST_CASES.each_pair do |datestr, bbc_week|
      expected = Date.parse(datestr)
      date = Date.bbc_week(*bbc_week)
      assert_equal(expected, date, "#{bbc_week.inspect} => #{datestr}")
    end
  end

end
