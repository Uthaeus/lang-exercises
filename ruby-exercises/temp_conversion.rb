require 'rspec'


def f_to_c temp
  cel = (temp - 32) / 1.8
  cel.round(1)
end

def c_to_f temp
  far = temp * 1.8 + 32
  far.round(1)
end


describe 'f_to_c' do
  it 'works' do 
    expect(f_to_c(32)).to eq(0)
  end

  it 'rounds to 1 decimal' do 
    expect(f_to_c(100)).to eq(37.8)
  end

  it 'works with negatives' do 
    expect(f_to_c(-100)).to eq(-73.3)
  end
end

describe 'c_to_f' do
  it 'works' do 
    expect(c_to_f(0)).to eq(32)
  end

  it 'rounds to 1 decimal' do 
    expect(c_to_f(73.2)).to eq(163.8)
  end

  it 'works with negatives' do 
    expect(c_to_f(-10)).to eq(14)
  end
end