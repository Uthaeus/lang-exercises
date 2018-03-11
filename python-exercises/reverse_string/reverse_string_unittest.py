import unittest
from reverse_string import reverse_string

class TestReverseString(unittest.TestCase):

  def setUp(self):
    pass

  def test_reverse_single(self):
    self.assertEqual( reverse_string('hello'), 'olleh')

  def test_reverse_multiple(self):
    self.assertEqual( reverse_string('hello there'), 'ereht olleh')

  def test_reverse_with_numbers(self):
    self.assertEqual( reverse_string('123! abc!'), '!cba !321')



if __name__=='__main__':
  unittest.main()