require 'minitest/autorun'
require_relative './lab5_main'

class Testprogramm < Minitest::Test
  def test_PartOne
    assert_in_delta -0.338, PartOne.calculate_y(1, 1), 0.001
    assert_in_delta 1.265, PartOne.calculate_y(2, 2), 0.001
  end

  def test_PartTwo
    5.times do
      mass = []
      mass_c = []
      (1..9).each do |num|
        c = rand(1..10)
        mass_c << c
        c.times do
          mass << num
        end
      end
      assert_equal mass_c.max, PartTwo.find_max_ryid(mass)
    end
  end

  def test_PartTree
    letters = [('a'..'z'), ('A'..'Z')].map(&:to_a).flatten # буквы
    len = 20
    # генерировать строку с 1 словом
    string = ''
    string << letters.sample
    assert_equal [string + ' ' * 19], PartTree.korrektor_strok([string], len)
    # генерировать строку без слов
    string = ''
    assert_equal [''], PartTree.korrektor_strok([string], len)
    # генерировать строку с дилоной больше чем ширина
    string = ''
    (len + 5).times do
      string << letters.sample
    end
    assert_equal [string], PartTree.korrektor_strok([string], len)
  end
end
