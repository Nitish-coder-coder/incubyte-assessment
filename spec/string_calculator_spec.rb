require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  subject { StringCalculator.new }

  it 'calculates the sum using the add operation' do
    expect(subject.calculate(:add, "1,2,3")).to eq(6)
  end

  it 'calculates the subtraction using the subtract operation' do
    expect(subject.calculate(:subtract, "5,3,1")).to eq(1)
  end

  it 'calculates the product using the multiply operation' do
    expect(subject.calculate(:multiply, "2,3,4")).to eq(24)
  end

  it 'calculates the division using the divide operation' do
    expect(subject.calculate(:divide, "10,2,2")).to eq(2)
  end

  it 'raises error for unsupported operations' do
    expect { subject.calculate(:unsupported, "1,2,3") }.to raise_error("Operation not supported")
  end
end
