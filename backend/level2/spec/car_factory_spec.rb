RSpec.describe CarFactory do
  let(:hash) { parse_from_json_input }
  let(:cars_hash) { hash["cars"] }
  let(:cars) { CarFactory.generate(cars_hash) }

  it 'should instantiate correct array of car objects' do
    expect(cars.length).to eq 3
  end
end