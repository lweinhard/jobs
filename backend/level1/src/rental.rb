require 'date'

class Rental
  attr_reader :id, :car_id, :start_date, :end_date, :distance

  def initialize(rental_hash)
    @id = rental_hash["id"]
    @car_id = rental_hash["car_id"]
    @start_date = DateTime.parse(rental_hash["start_date"])
    @end_date = DateTime.parse(rental_hash["end_date"])
    @distance = rental_hash["distance"]
  end
end