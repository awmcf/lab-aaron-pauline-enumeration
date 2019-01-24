class StarSystem
  attr_reader :name, :planets

  def initialize(name, planets)
    @name = name
    @planets = planets
  end

  def planet_names
    @planets.map { |planet| planet.name}
  end

  def get_planet_by_name(my_planet)
    @planets.find { |planet| my_planet == planet.name }
  end

  def get_largest_planet
    @planets.max_by { |planet| planet.diameter}
  end

  def get_smallest_planet
    @planets.min_by { |planet| planet.diameter}
  end

  def get_planets_with_no_moons
    @planets.find_all { |planet| planet.number_of_moons == 0 }
  end

  def get_planets_with_more_moons(number)
    my_planets = @planets.find_all { |planet| planet.number_of_moons > number}
    my_planets.map { |planet| planet.name}
  end

  def get_number_of_planets_closer_than(number)
    my_planets = @planets.find_all { |planet| planet.distance_from_sun < number}
    my_planets.length
  end

  def get_total_number_of_moons
    @planets.reduce(0) { |total_number_of_moons, planet| total_number_of_moons + planet.number_of_moons}
  end

  def get_planet_names_sorted_by_increasing_distance_from_sun
    my_planets = @planets.sort_by { |planet| planet.distance_from_sun}
    my_planets.map { |planet| planet.name}
  end

  def get_planet_names_sorted_by_size_decreasing
    my_planets = @planets.sort_by { |planet| -planet.diameter}
    my_planets.map { |planet| planet.name}
  end

end
