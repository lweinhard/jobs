RSpec.describe RentalFactory do
  let(:hash) { parse_from_json_input }
  let(:rentals_hash) { hash["rentals"] }
  let(:rentals) { RentalFactory.generate(rentals_hash) }

  it 'should instantiate correct array of rental objects' do
    expect(rentals.length).to eq 3
  end
end