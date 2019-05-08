class AlgDesign
  def duplicates(input)
    seen = []
    duplicates = []
    input.each do |item|
      if seen.include?(item)
        duplicates.push(item) unless duplicates.include?(item)
      else
        seen.push(item)
      end
    end
    duplicates
    end
end
