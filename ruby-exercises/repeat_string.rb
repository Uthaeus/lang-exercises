require 'rspec'


def repeat_string str, num 
  if num < 0 
    'ERROR'
  elsif num == 0
    ''
  else
    str * num 
  end
end


describe 'repeat_string' do 
  it 'repeats the string' do 
    expect(repeat_string('hey', 3)).to eq('heyheyhey')
  end

  it 'repeats the string many times' do 
    expect(repeat_string('hey', 10)).to eq('heyheyheyheyheyheyheyheyheyhey')
  end

  it 'repeats the string one time' do 
    expect(repeat_string('hey', 1)).to eq('hey')
  end

  it 'repeats the string 0 times' do 
    expect(repeat_string('hey', 0)).to eq('')
  end 

  it 'returns ERROR with negative numbers' do 
    expect(repeat_string('hey', -1)).to eq('ERROR')
  end
end