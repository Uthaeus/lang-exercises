import unittest
from temp_conversion import ftoc
from temp_conversion import ctof

class TestTempConversion(unittest.TestCase):

  def setUp(self):
    pass

  def test_works(self):
    self.assertEqual( ftoc(32), 0)

  def test_one_decimal(self):
    self.assertEqual( ftoc(100), 37.8)

  def test_with_negatives(self):
    self.assertEqual( ftoc(-100), -73.3)

  def test_ctof_works(self):
    self.assertEqual( ctof(0), 32)

  def test_ctof_one_decimal(self):
    self.assertEqual( ctof(73.2), 163.8)

  def test_ctof_with_negatives(self):
    self.assertEqual( ctof(-10), 14)



if __name__ == '__main__':
  unittest.main()