# Orvibo-s20 for Ruby

This is a fork of https://github.com/Corona4456/orvibo-ruby <br />
Its readme was incorrect/outdated, as the installation instructions fail, the gem was never published to RubyGems.

## Build and Install Gem

```
gem build orvibo-ruby.gemspec
gem install orvibo-s20-0.1.0.gem
```

## Usage (example)

``` 
require 'orvibo-s20'

# create the manager object
manager = OrviboS20.new(broadcast_address = '192.168.0.255', timeout = 2)

# call out to all Orvibo S20's on the broadcast Subnet. Returns a Hash of each device found.
# the key is the ip address, the value are the sockets details.
manager.discoverOutlets()

# get a specific OrviboS20Outlet
outlet = manager.discoverOutlets()["192.168.0.241"] 

# use the manager to link with the outlet (subscribe), then toggle it on and off.
manager.subscribe(outlet); manager.powerOn(outlet); sleep 5; manager.subscribe(outlet); manager.powerOff(outlet)

```

## Subscription Details / Quirks

<p>Its possible to get away without calling subscribe on the outlet before each call, but it seems more reliable to do so. </p>

<p>Without a valid subscription, the Orvibo will ignore any request. For my (single) use case, the few seconds required to establish a fresh subscription are fine. If you are using an Orvibo to cycle something on and off at very sort intervals.
I'd suspect the relay in the Orvibo would give out, and your connected appliance may be unhappy as well! </p>

<p>I'm sure there is a more exact science to it, but as stated my use case does not call for it, and it wasnt implemented in the original project, so I have not investigated. </p>

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
