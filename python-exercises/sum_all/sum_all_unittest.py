import unittest
from sum_all import sum_all

class TestSumAll(unittest.TestCase):

  def setUp(self):
    pass

  def test_numbers_in_range(self):
    self.assertEqual( sum_all(1, 4), 10)

  def test_large_number(self):
    self.assertEqual( sum_all(1, 4000), 8002000)

  def test_larger_first(self):
    self.assertEqual( sum_all(123, 1), 7626)

  def test_negative_number(self):
    self.assertEqual( sum_all(-10, 4), 'ERROR')

  def test_non_number(self):
    self.assertEqual( sum_all(10, '90'), 'ERROR')

  def test_array_parameter(self):
    self.assertEqual( sum_all(10, [90, 1]), 'ERROR')


if __name__ == '__main__':
  unittest.main()