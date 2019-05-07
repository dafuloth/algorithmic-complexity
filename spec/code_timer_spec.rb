require_relative '../lib/code_timer.rb'

describe 'CodeTimer' do
  array = [297, 182, 332, 302, 112, 92, 224]
  code_timer = CodeTimer.new(array)

  describe 'returns the time needed to execute a function' do
    it '.last returns execution time of `Array.last`' do
      expect(code_timer.last).to be_an_instance_of Float
    end

    it '.reverse returns execution time of `Array.reverse`' do
      expect(code_timer.reverse).to be_an_instance_of Float
    end

    it '.shuffle returns execution time of `Array.shuffle`' do
      expect(code_timer.shuffle).to be_an_instance_of Float
    end

    it '.sort returns execution time of `Array.sort`' do
      expect(code_timer.sort).to be_an_instance_of Float
    end
  end

  describe 'Create arrays of different sizes: 5000 to 100000, steps of 5000' do
    it 'does something' do
    end
  end
end
