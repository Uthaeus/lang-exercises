require 'rspec'

def remove_from_array arr, *items
  items.each do |item|
    if arr.include?(item)
      arr.delete(item)
    end
  end
  arr
end


describe 'remove_from_array' do 
  it 'removes a single value from array' do 
    expect(remove_from_array([1, 2, 3, 4], 3)).to eq([1, 2, 4])
  end

  it 'removes multiple values from array' do 
    expect(remove_from_array([1, 2, 3, 4], 3, 2)).to eq([1, 4])
  end

  it 'ignores non present values' do 
    expect(remove_from_array([1, 2, 3, 4], 7, "tacos")).to eq([1, 2, 3, 4])
  end

  it 'ignores non present values but still works' do 
    expect(remove_from_array([1, 2, 3, 4], 7, 2)).to eq([1, 3, 4])
  end

  it 'can remove all values' do 
    expect(remove_from_array([1, 2, 3, 4], 1, 2, 3, 4)).to eq([])
  end

  it 'works with strings' do 
    expect(remove_from_array(["hey", 2, 3, "ho"], "hey", 3)).to eq([2, "ho"])
  end
end


# describe('removeFromArray', function() {
#   it('removes a single value', function() {
#     expect(removeFromArray([1, 2, 3, 4], 3)).toEqual([1, 2, 4]);
#   });
#   it('removes multiple values', function() {
#     expect(removeFromArray([1, 2, 3, 4], 3, 2)).toEqual([1, 4]);
#   });
#   it('ignores non present values', function() {
#     expect(removeFromArray([1, 2, 3, 4], 7, "tacos")).toEqual([1, 2, 3, 4]);
#   });
#   it('ignores non present values, but still works', function() {
#     expect(removeFromArray([1, 2, 3, 4], 7, 2)).toEqual([1, 3, 4]);
#   });
#   it('can remove all values', function() {
#     expect(removeFromArray([1, 2, 3, 4], 1, 2, 3, 4)).toEqual([]);
#   });
#   it('works with strings', function() {
#     expect(removeFromArray(["hey", 2, 3, "ho"], "hey", 3)).toEqual([2, "ho"]);
#   });
# });