# BBC::Week Ruby Gem

Some BBC production teams plan their programming around week numbers, counting from the start of the year. Unfortunately this is different to the definition of an [ISO Week] or commercial week. The BBC publishes a programme week wall calendar to production staff, so that they can quickly identify the week number.

The rules for calculating the BBC week number are:
- Weeks start with Saturday
- Each week's year is the Gregorian year in which the Tuesday falls
- The first week of the year always contains 4th January



## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bbc-week'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install bbc-week

## Usage

After requiring `bbc-week`, two methods are added to the ruby [Date] class.

Days are numbered from Saturday:

| Number  | Day       |
|---------|-----------|
| 1       | Saturday  |
| 2       | Sunday    |
| 3       | Monday    |
| 4       | Tuesday   |
| 5       | Wednesday |
| 6       | Thursday  |
| 7       | Friday    |


### Date.bbc_week(year, week, day)

This class method creates a new [Date] object, based on a BBC year, week and day.

### Date#bbc_week

This instance method returns the BBC year, week and day as an array.


### Example Console Session

```ruby
$ ./bin/console 
irb(main):001:0> Date.today.bbc_week
=> [2020, 33, 6]
irb(main):002:0> Date.bbc_week(2020, 33, 6)
=> #<Date: 2020-08-20 ((2459082j,0s,0n),+0s,2299161j)>
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/bbc/ruby-bbc-week.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).



[ISO Week]:  https://en.wikipedia.org/wiki/ISO_week_date
[Date]:      https://ruby-doc.org/stdlib/libdoc/date/rdoc/Date.html
