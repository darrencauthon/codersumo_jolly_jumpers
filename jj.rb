module JJ
  def self.is_jolly numbers
    expected_results = the_expected_result_for numbers
    differences = differences_between numbers
    differences.reverse! if differences.first < differences.last
    expected_results.each_with_index do |v, i|
      return false if v != differences[i]
    end
    true
  rescue
    false
  end

  private

  def self.differences_between numbers
    numbers.each_with_index.select { |_, index| index > 0 }.
      map do |value, index|
        (value - numbers[index-1]).abs
      end
  end

  def self.the_expected_result_for numbers
    expected_result = (1..numbers.count).to_a.reverse
    expected_result.shift
    expected_result
  end
end
