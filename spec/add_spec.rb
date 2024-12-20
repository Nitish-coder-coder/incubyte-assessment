require_relative '../lib/add'

RSpec.describe Add do
  subject { Add.new }

  it 'adds a list of numbers' do
    expect(subject.execute("1,2,3")).to eq(6)
  end

  it 'returns 0 for an empty string' do
    expect(subject.execute("")).to eq(0)
  end

  it 'adds numbers separated by newline' do
    expect(subject.execute("1\n2,3")).to eq(6)
  end

  it 'uses custom delimiter' do
    expect(subject.execute("//;\n1;2")).to eq(3)
  end

  it 'raises error when negative numbers are included' do
    expect { subject.execute("1,-2,3") }.to raise_error("Negative numbers not allowed: -2")
  end

  it 'raises error for multiple negative numbers' do
    expect { subject.execute("1,-2,-3") }.to raise_error("Negative numbers not allowed: -2, -3")
  end
end
