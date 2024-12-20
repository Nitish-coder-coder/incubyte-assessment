require_relative '../lib/multiply'

RSpec.describe Multiply do
  subject { Multiply.new }

  it 'multiplies a list of numbers' do
    expect(subject.execute("2,3,4")).to eq(24)  # 2 * 3 * 4
  end

  it 'returns 0 for an empty string' do
    expect(subject.execute("")).to eq(0)
  end

  it 'multiplies numbers separated by newline' do
    expect(subject.execute("1\n2,3")).to eq(6)  # 1 * 2 * 3
  end

  it 'uses custom delimiter' do
    expect(subject.execute("//;\n2;3")).to eq(6)  # 2 * 3
  end

  it 'raises error when negative numbers are included' do
    expect { subject.execute("2,-3,4") }.to raise_error("Negative numbers not allowed: -3")
  end

  it 'raises error for multiple negative numbers' do
    expect { subject.execute("2,-3,-4") }.to raise_error("Negative numbers not allowed: -3, -4")
  end
end
