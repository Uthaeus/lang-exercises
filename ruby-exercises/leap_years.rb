require 'rspec'


def leap_years year 

  if year % 400 == 0
    true
  elsif year % 4 == 0 && year % 100 != 0
    true
  else
    false
  end

end


describe 'leap_years' do 
  it 'works with non century years' do 
    expect(leap_years(1996)).to eq(true)
  end

  it 'works with non century years' do 
    expect(leap_years(1997)).to eq(false)
  end

  it 'works with ridiculously futuristic non century years' do 
    expect(leap_years(34992)).to eq(true)
  end

  it 'works with century years' do 
    expect(leap_years(1900)).to eq(false)
  end

  it 'works with century years' do 
    expect(leap_years(1600)).to eq(true)
  end

  it 'works with century years' do 
    expect(leap_years(700)).to eq(false)
  end
end