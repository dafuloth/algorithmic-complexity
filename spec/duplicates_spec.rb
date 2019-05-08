require_relative '../lib/duplicates.rb'

# INPUT          | OUTPUT
# ---------------|-------
# []             | []
# [0]            | []
# [0,1]          | []
# [1,1]          | [1]
# [1,2,3]        | []
# [1,2,3,4,2,3]  | [2,3]
# ["one",2,3,2]  | [2]
# ["two",2,"two"]| ["two"]
# [3,1,"b",3,"b"]| [3,"b"]

describe 'duplicates test cases' do
  test = AlgDesign.new

  it 'Input: []' do
    expect(test.duplicates([])).to eq([])
  end

  it 'Input: [0]' do
    expect(test.duplicates([0])).to eq([])
  end

  it 'Input: [0,1]' do
    expect(test.duplicates([0, 1])).to eq([])
  end

  it 'Input: [1,1]' do
    expect(test.duplicates([1, 1])).to eq([1])
  end

  it 'Input: [1,2,3]' do
    expect(test.duplicates([1, 2, 3])).to eq([])
  end

  it 'Input: [1,2,3,4,2,3]' do
    expect(test.duplicates([1, 2, 3, 4, 2, 3])).to eq([2, 3])
  end

  it 'Input: ["one",2,3,2]' do
    expect(test.duplicates(['one', 2, 3, 2])).to eq([2])
  end

  it 'Input: ["two",2,"two"]' do
    expect(test.duplicates(['two', 2, 'two'])).to eq(['two'])
  end

  it 'Input: [3,1,"b",3,"b"]' do
    expect(test.duplicates([3, 1, 'b', 3, 'b'])).to eq([3, 'b'])
  end
end
