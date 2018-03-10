require 'rspec'


def calculator

  def add num1, num2
    num1 + num2
  end

  def subtract num1, num2
    num1 - num2
  end

  def sum arr 
    if arr.length == 0
      0
    elsif arr.length == 1
      arr[0]
    else
      arr.reduce(:+)
    end
  end

  def multiply arr 
    arr.inject(:*)
  end

  def power num1, num2
    num1 ** num2
  end

  def factorial num 
    if num == 0 || num == 1
      1
    else
      range = (1..num).to_a
      range.inject(:*)
    end
  end
end


describe 'add' do 
  it 'adds 0 and 0' do 
    expect(calculator.add(0, 0)).to eq(0)
  end

  it 'adds 2 and 2' do 
    expect(calculator.add(2, 2)).to eq(4)
  end

  it 'adds positive numbers' do 
    expect(calculator.add(2, 6)).to eq(8)
  end
end

describe 'subtract' do 
  it 'subtracts numbers' do 
    expect(calculator.subtract(10, 4)).to eq(6)
  end 
end

describe 'sum' do 
  it 'computes the sum of an empty array' do 
    expect(calculator.sum([])).to eq(0)
  end

  it 'computes the sum of an array of one number' do 
    expect(calculator.sum([7])).to eq(7)
  end

  it 'computes the sum of an array of two numbers' do 
    expect(calculator.sum([7, 11])).to eq(18)
  end

  it 'computes the sum of an array of many numbers' do 
    expect(calculator.sum([1,3,5,7,9])).to eq(25)
  end
end

describe 'multiply' do 
  it 'multiplies two numbers' do 
    expect(calculator.multiply([2, 4])).to eq(8)
  end

  it 'multiplies several numbers' do 
    expect(calculator.multiply([2, 4, 6, 8, 10, 12, 14])).to eq(645120)
  end
end

describe 'power' do 
  it 'raises one number to the power of another number' do 
    expect(calculator.power(4, 3)).to eq(64)
  end
end

describe 'factorial' do 
  it 'computes the factorial of 0' do 
    expect(calculator.factorial(0)).to eq(1)
  end

  it 'computes the factorial of 1' do 
    expect(calculator.factorial(1)).to eq(1)
  end

  it 'computes the factorial of 2' do 
    expect(calculator.factorial(2)).to eq(2)
  end

  it 'computes the factorial of 5' do 
    expect(calculator.factorial(5)).to eq(120)
  end

  it 'computes the factorial of 10' do 
    expect(calculator.factorial(10)).to eq(3628800)
  end
end
