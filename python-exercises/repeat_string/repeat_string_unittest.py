import unittest
from repeat_string import repeat_string

class TestRepeatString(unittest.TestCase):

  def setUp(self):
    pass

  def test_string_hey_3(self):
    self.assertEqual( repeat_string('hey', 3), 'heyheyhey')

  def test_string_hey_10(self):
    self.assertEqual( repeat_string('hey', 10), 'heyheyheyheyheyheyheyheyheyhey')

  def test_string_hey_1(self):
    self.assertEqual( repeat_string('hey', 1), 'hey')

  def test_string_hey_0(self):
    self.assertEqual( repeat_string('hey', 0), '')

  def test_string_error(self):
    self.assertEqual( repeat_string('hey', -1), 'ERROR')


if __name__=='__main__':
  unittest.main()