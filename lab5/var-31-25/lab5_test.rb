require 'minitest/autorun'
require_relative './lab5_main'

class  Testprogramm < Minitest::Test
    def test_PartOne
        assert_in_delta 3.477, PartOne.calculate_y(1, 1), 0.001
        assert_in_delta 173.883, PartOne.calculate_y(5, 5), 0.001
    end

    def test_Parttwo
        hex_number = rand(0xFFFFFFF).to_s(16).upcase
        letters_count = hex_number.count("a-fA-F")
        digits_count = hex_number.count("0-9")
        number = hex_number.hex
        assert_equal [digits_count, letters_count], PartTwo.dectohex(number)
    end

    def test_PartTree_ata
        bykvii = [('а'..'я'), ('А'..'Я')].map(&:to_a).flatten #букварь
        symbols = ["щ", "ч", "ш", "ж"]
        okonchanii = ["онок", "енок"]
        word = ""
        string = []
        5.times do
           word << bykvii.sample 
        end
        word << symbols.sample 
        word << okonchanii.sample 
        string << word
        assert_equal "ата", PartTree.korrector_strok(string)[0][-4..-2]
    end

    def test_PartTree_iata
        bykvii = [('а'..'я'), ('А'..'Я')].map(&:to_a).flatten #букварь
        symbols = ["щ", "ч", "ш", "ж"]
        okonchanii = ["онок", "енок"]
        bykvii.delete(symbols)
        word = ""
        string = []
        5.times do
           word << bykvii.sample 
        end
        word << okonchanii.sample 
        string << word
        assert_equal "ята", PartTree.korrector_strok(string)[0][-4..-2]
    end
end
