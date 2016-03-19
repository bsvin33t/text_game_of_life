require 'rspec'

describe Parser do
  let(:input) {
    <<-eos
    0 0 0 0
    0 1 1 0
    0 1 1 0
    0 0 0 0
    eos
  }
  it 'parses the input array and returns a token which has the locations of non zero elements' do
    locations = [[1, 1], [1, 2], [2, 1], [2, 2]]
    parser = Parser.new(input)
    expect(parser.locations).to match_array(locations)
  end

  it 'parses the input array and returns the dimensions of the array' do
    dimensions = [4, 4]
    parser = Parser.new(input)
    expect(parser.dimensions).to match_array(dimensions)
  end
end
