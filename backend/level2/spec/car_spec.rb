RSpec.describe Car do
  let(:hash) { parse_from_json_input }
  let(:car) { Car.new(hash["cars"].first) }

  it 'should have correct id' do
    expect(car.id).to eq 1
  end

  it 'should have correct price per day' do
    expect(car.price_per_day).to eq 2000
  end

  it 'should have correct price per km' do
    expect(car.price_per_km).to eq 10
  end
end