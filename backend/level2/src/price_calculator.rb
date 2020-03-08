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

  def duration_price(duration, price_per_day)
    sale = fetch_duration_sale(duration)
    total_price = duration * price_per_day
    total_price - (total_price * sale)
  end

  def fetch_duration_sale(duration)
    return 0 unless duration > 1
    return 0.5 if duration > 10
    return 0.3 if duration > 4
    return 0.1 if duration > 1
  end

  def compute_price(rental, car)
    duration_price = duration_price(rental.duration, car.price_per_day)
    kms_price = rental.distance * car.price_per_km
    total_price = duration_price + kms_price

    { id: rental.id, price: total_price }
  end
end