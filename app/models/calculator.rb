class Calculator
  def add_numbers(input)
    return 0 unless input.present?
    input.split(/[\n,]/).map(&:to_i).sum
  end
end
