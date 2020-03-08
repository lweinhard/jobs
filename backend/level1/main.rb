require './loader.rb'

def main
  output = {}
  hash = parse_from_json_input
  cars = CarFactory.generate(hash["cars"])
  rentals = RentalFactory.generate(hash["rentals"])
  price_calculator = PriceCalculator.new(cars, rentals)
  output["rentals"] = price_calculator.compute_prices
  write_output_to_file(output)
end

main