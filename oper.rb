$years = [2021, 2020, 2019]
$colors = ['Black', 'White', 'Silver']
$volumes = [2.0, 2.2, 3.0]
$bmw_models = ['X5', 'X6', 330, 530, 750]
$mercedes_models = ['AMG GT', 'C-Class', 'E-Class', 'G-Class']
$volkswagen_models = ['Touareg', 'Passat', 'Golf', 'Scirocco']
$spoilers_types = ['wing', 'fish-tale', 'crv-top']
$interior_types = ['leather', 'canvas']
$wheel_radius = ['R18', 'R19', 'R20', 'R21', 'R22']
$cars = []

class Auto

  def initialize
    @year = $years[rand($years.length)]
    @engine_volume = $volumes[rand($volumes.length)]
    @color = $colors[rand($colors.length)]
  end

  def description
    "Year: #{@year}, Engine volume: #{@engine_volume}, Color: #{@color}"
  end
end


class BMW < Auto

  attr_reader :spoiler

  def initialize
    super
    @manufacturer = self.class
    @model = $bmw_models[rand($bmw_models.length)]
    @spoiler = $spoilers_types[rand($spoilers_types.length)]
  end

  def description
    "#{@manufacturer} #{@model} - " + super + ", Spoiler type: #{@spoiler}"
  end
end


class Mercedes < Auto

  def initialize
    super
    @manufacturer = self.class
    @model = $mercedes_models[rand($mercedes_models.length)]
    @wheel_radius= $wheel_radius[rand($wheel_radius.length)]
  end

  def description
    "#{@manufacturer} #{@model} - " + super + ", Wheel radius: #{@wheel_radius}"
  end
end

class Volkswagen < Auto

  def initialize
    super
    @manufacturer = self.class
    @model = $mercedes_models[rand($mercedes_models.length)]
    @interior_types= $interior_types[rand($interior_types.length)]
  end

  def description
    "#{@manufacturer} #{@model} - " + super + ", Interior: #{@interior_types}"
  end
end

$auto_classes = [BMW, Mercedes, Volkswagen]


while $cars.length < 10
  random_car = $auto_classes[rand($auto_classes.length)].new
  File.open('cars_result.txt', 'a') do |file|
    file.write("#{random_car.description}\n")
  end
  puts random_car.description
  $cars.push(random_car)
end 
