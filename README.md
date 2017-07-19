# Orvibo-s20 for Ruby

This is a fork of https://github.com/Corona4456/orvibo-ruby <br />
It seems it was never completed, or pushed to rubygems, as its not listed gem.

## Build and Install Gem

```
gem build orvibo-ruby.gemspec
gem install orvibo-s20-0.1.0.gem
```

## Usage (example)

``` 
require 'orvibo-s20'

m = OrviboS20.new(broadcast_address = '192.168.0.255', timeout = 2)
s = m.discoverOutlets()["192.168.0.241"] 
m.subscribe(s); m.powerOn(s); sleep 5; m.subscribe(s); m.powerOff(s)

```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
