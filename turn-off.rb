require 'bundler'
Bundler.require

client = LIFX::Client.lan                  # Talk to bulbs on the LAN

client.discover! do |c|                    # Discover lights. Blocks until a light with the label 'Office' is found
  c.lights.with_label('Joan')
end
  
client.lights.turn_off

client.flush                               # Wait until all the packets have been sent