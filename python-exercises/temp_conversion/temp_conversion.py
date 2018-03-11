
def ftoc(num):
  temp = (num - 32) / 1.8
  return round(temp, 1)

def ctof(num):
  temp = num * 1.8 + 32
  return round(temp, 1)