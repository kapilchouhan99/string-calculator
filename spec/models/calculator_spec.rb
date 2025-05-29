require 'rails_helper'

RSpec.describe Calculator, type: :model do
  before do
    @calculator = Calculator.new
  end

  describe '#add_numbers' do
    it 'returns 0 for an empty input' do
      expect(@calculator.add_numbers("")).to eq(0)
    end

    it 'returns number of input in integer' do
      expect(@calculator.add_numbers("5")).to eq(5)
    end

    it 'returns the sum of input in integer' do
      expect(@calculator.add_numbers("2")).to eq(2)
    end

    it 'returns the sum of multiple numbers' do
      expect(@calculator.add_numbers("2,5,6,1,6")).to eq(20)
    end

    it 'ignores newline characters as separators and returns the sum of multiple numbers' do
      expect(@calculator.add_numbers("2,5,6\n6,6")).to eq(25)
    end

    it 'supports different custom delimiters and returns the sum of multiple numbers' do
      expect(@calculator.add_numbers("//;\n1;2;9")).to eq(12)
    end
  end
end
