require 'rspec'


def hello_world 
  return "Hello World!"
end


describe 'Hello World' do 
  it "returns Hello World!" do 
    expect(hello_world).to eq('Hello World!')
  end
end