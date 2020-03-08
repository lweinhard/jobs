class PriceCalculator
  attr_reader :cars, :rentals
  attr_accessor :prices

  def initialize(cars, rentals)
    @cars = cars
    @rentals = rentals
  end

  def compute_prices
    @prices = @rentals.map do |rental|
      car = fetch_car_from_id(rental.car_id)
      compute_price(rental, car)  
    end
  end

  def fetch_car_from_id(id)
    @cars.find { |car| car.id === id }
  end

  def compute_price(rental, car)
    duration_price = rental.duration * car.price_per_day
    kms_price = rental.distance * car.price_per_km
    total_price = duration_price + kms_price

    { id: rental.id, price: total_price }
  end
end