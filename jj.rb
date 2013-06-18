module JJ
  def self.is_jolly? numbers
    differences = differences_between numbers
    expected_results = the_expected_result_for differences
    do_these_match? differences, expected_results
  rescue
    false
  end

  private

  def self.do_these_match? differences, expected_results
    expected_results.each_with_index.
      select { |v, i| v != differences[i] }.count == 0
  end

  def self.differences_between numbers
    numbers.each_with_index.
      select { |_, index| index > 0 }.
      map    { |v, i| (v - numbers[i-1]).abs }
  end

  def self.the_expected_result_for numbers
    expected_result = (1..numbers.count).to_a.reverse
    expected_result.reverse! if numbers.first < numbers.last
    expected_result
  end
end
