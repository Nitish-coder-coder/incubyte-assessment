# String Calculator

A simple calculator implementation in Ruby that supports addition, subtraction, multiplication, and division operations. It is designed to handle basic arithmetic expressions with support for custom delimiters, newline separators, and error handling for negative numbers.

## Features:
- **Addition, Subtraction, Multiplication, Division**: Supports basic arithmetic operations.
- **Custom Delimiters**: You can specify a custom delimiter (e.g., `//;\n1;2` for a semicolon).
- **Multiple Delimiters**: Supports both commas and newlines as delimiters.
- **Error Handling**: Throws an exception for negative numbers, with a message listing all negative numbers found.
- **Empty String**: Returns `0` for an empty input string.
  
## Requirements
- Ruby 3.x or later
- Bundler (for managing dependencies)

## Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/Nitish-coder-coder/incubyte-assessment.git
   cd string_calculator
   bundle install

# Running Tests
To run the RSpec tests for the calculator, use the following command:
  ```bash
  bundle exec rspec --format documentation
