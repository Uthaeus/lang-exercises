import unittest
from fibonacci import fibonacci

class TestFibonacci(unittest.TestCase):

  def setUp(self):
    pass

  def test_one(self):
    self.assertEqual( fibonacci(4), 3)

  def test_two(self):
    self.assertEqual( fibonacci(6), 8)

  def test_three(self):
    self.assertEqual( fibonacci(10), 55)

  def test_four(self):
    self.assertEqual( fibonacci(15), 610)

  def test_five(self):
    self.assertEqual( fibonacci(25), 75025)

  def test_six(self):
    self.assertEqual( fibonacci(-25), 'OOPS')

  def test_seven(self):
    self.assertEqual( fibonacci("8"), 21)



if __name__ == '__main__':
  unittest.main()