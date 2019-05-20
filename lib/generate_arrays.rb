# frozen_string_literal: true

class ArraysGenerator
  def initialize(min = 5000, max = 100_000, step = 5000)
    @min_size = min
    @max_size = max
    @step_size = step
  end

  # Assumes sensible arguments, that (max-min) % step == 0
  def generate_arrays
    steps = (@max_size - @min_size) / @step_size

    testing_arrays = []

    testing_arrays.push(array(@min_size))

    steps.times do
      size = testing_arrays.last.length + @step_size
      testing_arrays.push(array(size))
    end

    testing_arrays
  end

  private

  def array(size = 0)
    Array.new(size).map { random_number }
  end

  def random_number
    rand(1..200_000)
  end
end
