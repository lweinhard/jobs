RSpec.describe PriceCalculator do
  let(:hash) { parse_from_json_input }
  let(:rentals_hash) { hash["rentals"] }
  let(:cars_hash) { hash["cars"] }
  let(:rentals) { RentalFactory.generate(rentals_hash) }
  let(:cars) { CarFactory.generate(cars_hash) }
  let(:price_calculator) { PriceCalculator.new(cars, rentals) }
  let(:prices) { price_calculator.compute_prices }

  it "should compute correct rental price id" do
    expect(prices.first[:id]).to eq rentals.first.id
  end

  it "should compute correct price" do
    expect(prices.first[:price]).to eq 3000
  end

  it "should contain correct amount of rentals prices" do
    expect(prices.length).to eq rentals.length
  end
end