


def translate(str):

  my_vowels = ['a', 'e', 'i', 'o']
  result_arr = []
  my_arr = str.lower().split(' ')

  for word in my_arr:
    if word[0] in my_vowels:
      result_arr.append(word + 'ay')

    else:
      x = 0
      head = ''
      while word[x] not in my_vowels:
        head += word[x]
        x += 1
        if word[x] in my_vowels:
          break
      tail = word[x:]
      result = tail + head + 'ay'
      result_arr.append(result)
       
  return(' '.join(result_arr))

