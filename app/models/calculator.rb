class Calculator
  def add_numbers(input)
    return 0 unless input.present?

    numbers = extract_numbers(input)
    numbers.map(&:to_i).sum
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
