require_relative 'generate_arrays.rb'

class CodeTimer
  def initialize(test_arrays = ArraysGenerator.new.generate_arrays)
    @arrays = test_arrays
  end

  def last
    results = Hash.new

    @arrays.each do |array|
      start_time = Time.now
      array.last
      time = Time.now - start_time
      results[array.length.to_s.to_sym] = ("%.6f" % time)
    end

    results
  end

  def reverse
    results = Hash.new

    @arrays.each do |array|
      start_time = Time.now
      array.reverse
      time = Time.now - start_time
      results[array.length.to_s.to_sym] = ("%.6f" % time)
    end

    results
  end

  def shuffle
    results = Hash.new

    @arrays.each do |array|
      start_time = Time.now
      array.shuffle
      time = Time.now - start_time
      results[array.length.to_s.to_sym] = ("%.6f" % time)
    end

    results
  end

  def sort
    results = Hash.new

    @arrays.each do |array|
      start_time = Time.now
      array.sort
      time = Time.now - start_time
      results[array.length.to_s.to_sym] = ("%.6f" % time)
    end

    results
  end

  # # Assumes sensible arguments, that (max-min) % step == 0
  # def generate_arrays(min, max, step)
  #   steps = (max - min) / step

  #   testing_arrays = []

  #   testing_arrays.push(GenerateArray.new(min).array)

  #   steps.times do
  #     size = testing_arrays.last.length + step
  #     testing_arrays.push(GenerateArray.new(size).array)
  #   end

  #   testing_arrays
  # end

end
