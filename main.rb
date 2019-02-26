# main.rb
require_relative "planet.rb"
require_relative "solar_system.rb"

def main
  solar_system = SolarSystem.new("Sol")
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
  pluto = Planet.new("Pluto", "grey", 100, 500, "Is Pluto even a planet?")
  saturn = Planet.new("Saturn", "red", 600, 800, "Saturn has rings")

  solar_system.add_planet(earth)
  solar_system.add_planet(pluto)
  solar_system.add_planet(saturn)

  puts "What do you want to do next, list planets or exit"
  answer = gets.chomp

  while answer == "list planets"
    list = solar_system.list_planets
    puts list
    puts "What do you want to do next?"
    answer = gets.chomp.downcase
  end
end

main
