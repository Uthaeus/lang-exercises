require 'rspec'


def pig_latin 

  def translate str
    vowels = ['a', 'e', 'i', 'o']
    result_arr = []
    my_arr = str.downcase.split(' ')

    my_arr.each do |item|
      my_item = item.split(//)
      if vowels.include?(my_item[0])
        result_arr << my_item.join('') + 'ay'
      else 
        x = 0
        until vowels.include?(my_item[x])
          my_item = my_item.push(my_item.shift) 
          
        end
        x += 1
        result_arr << my_item.join('') + 'ay'
      end
    end
    result_arr.join(' ')
  end

end


describe 'translate' do 
  it 'translates a word beginning with a vowel' do 
    expect(pig_latin.translate('apple')).to eq('appleay')
  end

  it 'translates a word beginning with a consonant' do 
    expect(pig_latin.translate('banana')).to eq('ananabay')
  end

  it 'translates a word beginning with two consonants' do 
    expect(pig_latin.translate('cherry')).to eq('errychay')
  end

  it 'translates two words' do 
    expect(pig_latin.translate('eat pie')).to eq('eatay iepay')
  end

  it 'translates a word beginning with three consonants' do 
    expect(pig_latin.translate('three')).to eq('eethray')
  end 

  it 'counts sch as a single phoneme' do 
    expect(pig_latin.translate('school')).to eq('oolschay')
  end

  it 'counts qu as a single phoneme' do 
    expect(pig_latin.translate('quiet')).to eq('ietquay')
  end

  it 'counts gu as a consonant even when its preceded by a consonant' do 
    expect(pig_latin.translate('square')).to eq('aresquay')
  end

  it 'translates many words' do 
    expect(pig_latin.translate('the quick brown fox')).to eq("ethay ickquay ownbray oxfay")
  end
end