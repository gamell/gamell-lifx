require 'bundler'
Bundler.require

client = LIFX::Client.lan                  # Talk to bulbs on the LAN

client.discover! do |c|                    # Discover lights. Blocks until a light with the label 'Office' is found
  c.lights.with_label('Joan')
end
  
client.lights.turn_on


                                           # Blocks for a default of 10 seconds or until a light is found
# client.lights.turn_on                      # Tell all lights to turn on
light = client.lights.with_label('Joan') # Get light with label 'Office'

# # Set the Office light to pale green over 5 seconds
default_color = LIFX::Color.white(brightness: 0.45)
light.set_color(default_color, duration: 2)        # Light#set_color is asynchronous

#sleep 5                                    # Wait for light to finish changing
# light.set_label('My Office')

# light.add_tag('Offices')                   # Add tag to light

#client.lights.with_label('Joan').turn_off

client.flush                               # Wait until all the packets have been sent