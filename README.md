# Sswars

This gem is a simple Star Wars name progeram. It grabs the names of Star Wars characters and planets from the public Star Wars api site: http://swapi.co

It only has two public calls
* find_people(#)
* find_planet(#)

If there is no planet or person with that number an empty hash is returned.

## My development notes

1. First run the command: bundle gem sswars
2. Change into that directory
3. Edit the file **sswars.gemspec** with appropriate information.
4. Edit the file **lib/sswars.rb** with the Ruby code to do the work.
  * The module name should be: **module Sswars**
  * Include gem "httparty"
  * Create two methods: find_person() and find_planet
5. Test execution in IRB.
  * In IRB run: **require_relative 'lib/sswars'** - should return true.
  * In IRB test by running: **Sswars.find_people(2)** - should return => "C-3PO"
  * In IRB test by running: **Sswars.find_planet(42)** - should return => "Haruun Kal"
6. Create local git repo and commit. Push to Github.
  * Github: git@github.com:rvrichards/sswars.git
7. Create gem, run: **rake release**



Add this line to your application's Gemfile:

```ruby
gem 'sswars'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sswars

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/rtfminc/sswars.

