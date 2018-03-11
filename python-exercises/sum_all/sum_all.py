
def sum_all(num1, num2):
  if type(num1) != int or type(num2) != int:
    return 'ERROR'
  elif num1 < 0 or num2 < 0:
    return 'ERROR'
  elif num1 > num2:
    my_range = list(range(num2, num1 + 1))
    total = 0
    for num in my_range:
      total = total + num 
    return total
  else:
    my_range = list(range(num1, num2 + 1))
    total = 0
    for num in my_range:
      total = total + num 
    return total
