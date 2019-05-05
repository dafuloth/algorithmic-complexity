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
end
