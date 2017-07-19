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

# create the manager object
manager = OrviboS20.new(broadcast_address = '192.168.0.255', timeout = 2)

# call out to all Orvibo S20's on the broadcast Subnet. Returns a Hash of each device found.
# the key is the ip address, the value are the sockets details.
manager.discoverOutlets()

# get a specific OrviboS20Socket
socket = m.discoverOutlets()["192.168.0.241"] 

# use the manager to link with the socket (subscribe), then toggle it on and off.
manager.subscribe(socket); manager.powerOn(socket); sleep 5; manager.subscribe(socket); manager.powerOff(socket)

```

## Subscription Details / Quirks

Its possible to get away without calling subscribe on the socket before each call, but it seems more reliable to do so. <br />
Without a valid subscription, the Orvibo will ignore any request. For my (single) use case, the few seconds <br />
required to establish a fresh subscription are fine. If you are using an Orvibo to cycle something on and off at very sort intervals <br />
I'd suspect the relay in the Orvibo would give out, and your connected appliance may be unhappy as well! 
I'm sure there is a more exact science to it, but as stated my use case does not call for it, and it wasnt implemented in the original project, so I have not investigated. <br />

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
