class Car
  attr_accessor :id, :price_per_day, :price_per_km
  
  def initialize(car_hash)
    @id = car_hash["id"]
    @price_per_day = car_hash["price_per_day"]
    @price_per_km = car_hash["price_per_km"]
  end
end