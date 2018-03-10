require 'rspec'


def reverse_string str 
  str.split('').reverse.join('')
end


describe 'reverse_string' do 
  it 'reverses single word' do 
    expect(reverse_string('hello')).to eq('olleh')
  end

  it 'reverses multiple words' do 
    expect(reverse_string('hello there')).to eq('ereht olleh')
  end

  it 'works with numbers and punctuation' do 
    expect(reverse_string('123! abc!')).to eq('!cba !321')
  end 
end