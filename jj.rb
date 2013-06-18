module JJ
  def self.is_jolly input
    return false if input.count <= 1
    expected_result = (1..input.count).to_a.reverse.to_a
    expected_result.shift
    things = input.each_with_index.select { |value, index| index > 0 }.
      map do |value, index|
        (value - input[index-1]).abs
      end
    things.reverse! if things.first < things.last
    expected_result.each_with_index do |_, i|
      return false if expected_result[i] != things[i]
    end
    true
  end
end
