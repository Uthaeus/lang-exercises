require 'rspec'


def sum_all num1, num2
  
  if Integer === num1 && Integer === num2
    if num1 < 0 || num2 < 0 
      'ERROR'
    elsif num1 > num2
      range = (num2..num1).to_a
      range.reduce(:+)
    else
      range = (num1..num2).to_a
      range.reduce(:+)
    end
  else
    'ERROR'
  end

end


describe 'sum_all' do 
  it 'sums numbers within the range' do 
    expect(sum_all(1, 4)).to eq(10)
  end

  it 'works with large numbers' do 
    expect(sum_all(1, 4000)).to eq(8002000)
  end

  it 'works with larger number first' do 
    expect(sum_all(123, 1)).to eq(7626)
  end

  it 'returns ERROR with negative numbers' do 
    expect(sum_all(-10, 4)).to eq('ERROR')
  end

  it 'returns ERROR with non-number parameters' do 
    expect(sum_all(10, '90')).to eq('ERROR')
  end

  it 'returns ERROR with non-number parameters' do 
    expect(sum_all(10, [90, 1])).to eq('ERROR')
  end
end