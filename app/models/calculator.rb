class Calculator
  def add_numbers(input)
    return 0 if input.nil? || input.strip.empty?

    numbers = extract_numbers(input)
    mapped_numbers = numbers.map(&:to_i)
    negatives = mapped_numbers.select { |num| num < 0 }
    raise "negative numbers not allowed: #{negatives.join(', ')}" unless negatives.empty?

    mapped_numbers.sum
  end

  private

  def extract_numbers(input)
    if input.start_with?("//")
      delimiter, numbers_str = input[2..].split("\n", 2)
      numbers_str.split(delimiter)
    else
      input.split(/[\n,]/)
    end
  end
end
