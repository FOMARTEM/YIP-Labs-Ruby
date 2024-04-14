require 'minitest/autorun'
require 'date'
require_relative './lab5_main'

class  Testprogramm < Minitest::Test
    def test_PartOne
        assert_in_delta 2.175, PartOne.calculate_b(1, 1, 1), 0.001
        assert_in_delta 0.192, PartOne.calculate_b(2, 1, 3), 0.001
        assert_in_delta 0.014, PartOne.calculate_b(3, 4, 4), 0.001
    end

    def test_PartTwo
        dates = []

        10.times do
            year = rand(2020..2023)
            month = rand(1..12)
            day = rand(1..Date.new(year, month, -1).day)
            date = Date.new(year, month, day)
            dates << date.to_s
        end
        string_of_dates = dates.join(' ')
        string_of_dates << ' ' + Date.today.to_s

        assert_equal Date.today.to_s, PartTwo.finddate(string_of_dates)
    end

    def test_PartTree
        #тест на все слова с #
        letters = [('a'..'z'), ('A'..'Z')].map(&:to_a).flatten
        strings = []
        word = 'a'
        words = (word + ' ') * 5
        string = ""
        5.times do
            string << '#' + letters.sample + ' '
        end
        strings << string
        assert_equal [words], PartTree.korrector_strok(strings, word)

        #тест без слов с #
        strings = []
        string = ""
        5.times do
            string << letters.sample + ' '
        end
        strings << string
        assert_equal strings, PartTree.korrector_strok(strings, word)
    end 
end