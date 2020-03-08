class CarFactory
  def self.generate(cars_hash)
    cars_hash.map { |car_hash| Car.new(car_hash) }
  end
end