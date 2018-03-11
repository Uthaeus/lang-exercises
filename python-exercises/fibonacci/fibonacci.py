
def fibonacci(num):

  if type(num) == str:
    num = int(num)

  if num < 0:
    return 'OOPS'

  fib = [1, 1]
  while len(fib) < num:
    fib.append(fib[-2] + fib[-1])

  return fib[num - 1]