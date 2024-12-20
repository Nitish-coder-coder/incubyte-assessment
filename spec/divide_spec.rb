require_relative '../lib/divide'

RSpec.describe Divide do
  subject { Divide.new }

  it 'divides a list of numbers' do
    expect(subject.execute("10,2,2")).to eq(2)  # 10 / 2 / 2
  end

  it 'returns 0 for an empty string' do
    expect(subject.execute("")).to eq(0)
  end

  it 'divides numbers separated by newline' do
    expect(subject.execute("100\n2,5")).to eq(10)  # 100 / 2 / 5
  end

  it 'uses custom delimiter' do
    expect(subject.execute("//;\n10;2")).to eq(5)  # 10 / 2
  end

  it 'raises error when dividing by zero' do
    expect(subject.execute("10,0")).to eq("Cannot divide by zero")
  end

  it 'raises error when negative numbers are included' do
    expect { subject.execute("10,-2,2") }.to raise_error("Negative numbers not allowed: -2")
  end

  it 'raises error for multiple negative numbers' do
    expect { subject.execute("10,-2,-2") }.to raise_error("Negative numbers not allowed: -2, -2")
  end
end
