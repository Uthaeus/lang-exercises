require 'rspec'


def fibonacci num
  if String === num
    num = num.to_i
  end

  if num < 0
    'OOPS'
  else
    fib = [0, 1]
    while fib.length < num -1
      fib << fib[-2] + fib[-1]
    end
    fib.reduce(:+) + 1
  end
  
end


describe 'fibonacci' do 
  it 'works' do 
    expect(fibonacci(4)).to eq(3)
  end

  it 'works' do 
    expect(fibonacci(6)).to eq(8)
  end

  it 'works' do 
    expect(fibonacci(10)).to eq(55)
  end

  it 'works' do 
    expect(fibonacci(15)).to eq(610)
  end

  it 'works' do 
    expect(fibonacci(25)).to eq(75025)
  end

  it "doesn't accept negatives" do 
    expect(fibonacci(-25)).to eq('OOPS')
  end

  it 'does accept strings' do 
    expect(fibonacci("8")).to eq(21)
  end
end