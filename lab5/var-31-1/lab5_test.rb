require 'minitest/autorun'
require_relative './lab5_main'

class  Testprogramm < Minitest::Test
    def test_PartOne
        assert_in_delta -0.155, PartOne.calculate_y(1), 0.001
        assert_in_delta -0.192, PartOne.calculate_y(-5), 0.001
    end

    def test_Parttwo
        str = ""
        characters = [('a'..'z'), ('A'..'Z'), (0..9)].map(&:to_a).flatten
        5.times do
            str << characters.sample
        end
        assert_equal false, PartTwo.isPalindrome(str + str)
        assert_equal true, PartTwo.isPalindrome(str + str.reverse)
    end

    def test_PartTree
        letters = [('a'..'z'), ('A'..'Z')].map(&:to_a).flatten
        numbers = ['0'..'9'].map(&:to_a).flatten
        bad_simbouls = [('!'..'/'), (':'..'@'), ('['..'\''), ('{'..'~')].map(&:to_a).flatten

        #тест корректировки первых чисел
        strings = []
        string = ""
        5.times do
            word = ""
            word << numbers.sample
            3.times do
                word << letters.sample
            end
            word += ' '
            string << word
        end
        strings << string
        assert_equal 5, PartTree.korrector_strok(strings)[1]

        #тест без корректировок
        strings = []
        string = ""
        5.times do
            word = ""
            3.times do
                word << letters.sample
            end
            word += ' '
            string << word
        end
        strings << string
        assert_equal 0, PartTree.korrector_strok(strings)[1]

        #тест с удалением
        strings = []
        string = ""
        5.times do
            word = ""
            3.times do
                word << letters.sample
            end
            word << bad_simbouls.sample
            word += ' '
            string << word
        end
        strings << string
        assert_equal [""], PartTree.korrector_strok(strings)[0]
    end
end
