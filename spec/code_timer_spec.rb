# frozen_string_literal: true

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

  describe 'creating array-of-arrays for tests, ' do
    describe '#generate_array(min, max, step) assumes sensible arguments: (max-min) % step == 0' do
      it '5000 to 10000, in steps of 5000: i.e. two arrays, sizes 5000 and 10000' do
        min = 5000
        max = 10_000
        step = 5000

        test_arrays = code_timer.generate_arrays(min, max, step)

        contains_two_arrays = (test_arrays.length == 2)
        first_array_5000 = (test_arrays[0].length == 5000)
        second_array_10000 = (test_arrays[1].length == 10_000)

        expect(contains_two_arrays && first_array_5000 && second_array_10000).to be
      end

      it 'FEATURE TEST 5000 to 100000, in steps of 5000: i.e. 20 arrays' do
        min = 5000
        max = 100_000
        step = 5000

        test_arrays = code_timer.generate_arrays(min, max, step)

        contains_twenty_arrays = (test_arrays.length == 20)
        first_array_5000 = (test_arrays[0].length == 5000)
        last_array_100000 = (test_arrays.last.length == 100_000)

        expect(contains_twenty_arrays && first_array_5000 && last_array_100000).to be
      end
    end
  end
end
