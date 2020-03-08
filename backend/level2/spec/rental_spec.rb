RSpec.describe Rental do
  let(:hash) { parse_from_json_input }
  let(:rental) { Rental.new(hash["rentals"].first) }

  it 'should have correct id' do
    expect(rental.id).to eq 1
  end

  it 'should have correct car_id' do
    expect(rental.car_id).to eq 1
  end

  it 'should have correct start_date' do
    expect(rental.start_date).to eq DateTime.new(2017, 12, 8)
  end

  it 'should have correct end_date' do
    expect(rental.end_date).to eq DateTime.new(2017, 12, 10)
  end

  it 'should have correct distance' do
    expect(rental.distance).to eq 100
  end

  it 'should have correct duration' do
    expect(rental.duration).to eq 3
  end
end