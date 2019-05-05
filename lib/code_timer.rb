class CodeTimer
  def initialize(test_array)
    @array = test_array
  end

  def last
    start_time = Time.now
    @array.last
    end_time = Time.now

    end_time - start_time
  end
end
