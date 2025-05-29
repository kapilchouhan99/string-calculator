require 'rails_helper'

RSpec.describe Calculator, type: :model do
  describe '#add_numbers' do
    it 'returns 0 for an empty input' do
      calculator = Calculator.new
      expect(calculator.add_numbers("")).to eq(0)
    end

    it 'returns number of input in integer' do
      calculator = Calculator.new
      expect(calculator.add_numbers("5")).to eq(5)
    end
  end
end
