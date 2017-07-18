# Orvibo::Ruby

This is a branch of https://github.com/Corona4456/orvibo-ruby
It seems it was never completed, or pushed to rubygems, as its not a known gem.
I'm fiddling with it for my own purposes. Its unlikely I'll release in gem form,
loading a few files is fine for my project...

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

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
