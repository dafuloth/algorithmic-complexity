class GenerateArray
  def initialize(size = 0)
    @array_size = size
  end

  def array
    Array.new(@array_size).map { random_number }
  end

  private

  def random_number
    rand(1..200_000)
  end
end
