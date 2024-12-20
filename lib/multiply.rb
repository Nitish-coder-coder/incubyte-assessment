class Multiply
  def execute(numbers)
    return 0 if numbers.empty?

    delimiter = ","
    if numbers.start_with?("//")
      parts = numbers.split("\n", 2)
      delimiter = Regexp.escape(parts[0][2..])
      numbers = parts[1]
    end

    numbers = numbers.gsub("\n", delimiter)
    number_list = numbers.split(Regexp.union(delimiter)).map(&:to_i)

    check_for_negatives(number_list)
    number_list.reduce(:*)
  end

  private

  def check_for_negatives(number_list)
    negatives = number_list.select { |num| num < 0 }
    raise "Negative numbers not allowed: #{negatives.join(', ')}" unless negatives.empty?
  end
end
