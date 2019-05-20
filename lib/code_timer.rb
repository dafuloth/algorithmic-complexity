require_relative 'generate_array.rb'

class CodeTimer
  def initialize(test_array)
    @array = test_array
  end

  def last
    start_time = Time.now
    @array.last
    Time.now - start_time
  end

  def reverse
    start_time = Time.now
    @array.reverse
    Time.now - start_time
  end

  def shuffle
    start_time = Time.now
    @array.shuffle
    Time.now - start_time
  end

  def sort
    start_time = Time.now
    @array.sort
    Time.now - start_time
  end

  # Assumes sensible arguments, that (max-min) % step == 0
  def generate_arrays(min, max, step)
    steps = (max - min) / step

    testing_arrays = []

    testing_arrays.push(GenerateArray.new(min).array)

    steps.times do
      size = testing_arrays.last.length + step
      testing_arrays.push(GenerateArray.new(size).array)
    end

    testing_arrays
  end

end
