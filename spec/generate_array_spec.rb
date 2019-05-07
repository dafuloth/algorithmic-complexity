require_relative '../lib/generate_array.rb'

describe 'GenerateArray: Create and fill array of required size with random numbers' do
  skip '.random_number generates random integers' do
    generator = GenerateArray.new
    pending('method made private when I know it passes')
    expect(generator).to receive(:rand).and_return(2019)
    expect(generator.random_number).to be_an_instance_of Integer
  end

  describe 'generates arrays' do
    it '.array(1) returns array of length 1' do
      expect(GenerateArray.new(1).array.length).to eq 1
    end

    it '.array(1) returns array populated with random number' do
      expect(GenerateArray.new(1).array[0]).to be_an_instance_of Integer
    end

    it '.array(5000) returns an array of length 5000' do
      expect(GenerateArray.new(5000).array.length).to eq 5000
    end

    it '.array(5000) returns an array of 5000 numbers' do
      size = 5000
      expect(GenerateArray.new(size).array.select { |number| number.class == Integer }
        .length).to eq size
    end
  end
end
