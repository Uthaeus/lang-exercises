require 'rspec'


def palindromes str 
  new_str = str.gsub(/\W+/, '')
  new_str.downcase == new_str.downcase.reverse ? true : false
end


describe 'palindromes' do 
  it 'works with single words' do 
    expect(palindromes('racecar')).to eq(true)
  end

  it 'works with punctuation' do 
    expect(palindromes('Racecar!')).to eq(true)
  end

  it 'works with multiple words' do 
    expect(palindromes('A car, a man, a maraca.')).to eq(true)
  end

  it 'works with multiple words' do 
    expect(palindromes('Animal loots foliated detail of stool lamina.')).to eq(true)
  end

  it "doesn't just always return true" do 
    expect(palindromes('ZZZZ car, a man, a maraca.')).to eq(false)
  end
end