# Orvibo::Ruby

To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'orvibo-ruby'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install orvibo-ruby

## Usage

``` require_relative 'lib/orvibo/util/string'
 require_relative 'lib/orvibo/util/hex'
 require_relative 'lib/orvibo/s20_outlet'
 require_relative 'lib/orvibo/s20_outlet_manager'

 m = Orvibo::S20OutletManager.new
 #m.discoverOutlets()
 s = m.discoverOutlets()["192.168.0.241"]
 m.subscribe(s); m.powerOn(s); sleep 5; m.subscribe(s); m.powerOff(s)
```
## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Corona4456/orvibo-ruby. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
