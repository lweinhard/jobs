class RentalFactory
  def self.generate(rentals_hash)
    rentals_hash.map { |rental_hash| Rental.new(rental_hash) }
  end
end