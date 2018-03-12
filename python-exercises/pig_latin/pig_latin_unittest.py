import unittest
from pig_latin import translate

class TestPigLatin(unittest.TestCase):

  def setUp(self):
    pass

  def test_beginning_in_vowel(self):
    self.assertEqual( translate('apple'), 'appleay')

  def test_beginning_in_consonant(self):
    self.assertEqual( translate('banana'), 'ananabay')

  def test_two_consonants(self):
    self.assertEqual( translate('cherry'), 'errychay')

  def test_two_words(self):
    self.assertEqual( translate('eat pie'), 'eatay iepay')

  def test_three_consonants(self):
    self.assertEqual( translate('three'), 'eethray')

  def test_counts_sch(self):
    self.assertEqual( translate('school'), 'oolschay')

  def test_counts_qu(self):
    self.assertEqual( translate('quiet'), 'ietquay')

  def test_counts_qu_as_consonant(self):
    self.assertEqual( translate('square'), 'aresquay')

  def test_many_words(self):
    self.assertEqual( translate('the quick brown fox'), "ethay ickquay ownbray oxfay")


if __name__ == '__main__':
  unittest.main()