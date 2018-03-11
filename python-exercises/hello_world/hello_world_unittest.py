import unittest
from hello_world import hello_world

class TestHelloWorld(unittest.TestCase):

  def setUp(self):
    pass

  def test_string(self):
    self.assertEqual( hello_world(), 'Hello World!')


if __name__=='__main__':
  unittest.main()