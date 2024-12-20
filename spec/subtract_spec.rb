require_relative '../lib/subtract'

RSpec.describe Subtract do
  subject { Subtract.new }

  it 'subtracts a list of numbers' do
    expect(subject.execute("5,3,1")).to eq(1)  # 5 - 3 - 1
  end

  it 'returns 0 for an empty string' do
    expect(subject.execute("")).to eq(0)
  end

  it 'subtracts numbers separated by newline' do
    expect(subject.execute("10\n2,3")).to eq(5)  # 10 - 2 - 3
  end

  it 'uses custom delimiter' do
    expect(subject.execute("//;\n5;3")).to eq(2)  # 5 - 3
  end

  it 'raises error when negative numbers are included' do
    expect { subject.execute("5,-3,1") }.to raise_error("Negative numbers not allowed: -3")
  end

  it 'raises error for multiple negative numbers' do
    expect { subject.execute("10,-2,-3") }.to raise_error("Negative numbers not allowed: -2, -3")
  end
end
