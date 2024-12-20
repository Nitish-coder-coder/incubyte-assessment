require_relative 'add'
require_relative 'subtract'
require_relative 'multiply'
require_relative 'divide'

class StringCalculator
  def initialize
    @operations = {
      add: Add.new,
      subtract: Subtract.new,
      multiply: Multiply.new,
      divide: Divide.new
    }
  end

  def calculate(operation, numbers)
    if @operations.key?(operation.to_sym)
      @operations[operation.to_sym].execute(numbers)
    else
      raise "Operation not supported"
    end
  end
end
