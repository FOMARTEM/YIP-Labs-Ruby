module PartOne
    def self.calculate_y (x, z)
        y = (x**2 + 2 * Math::E**x) * Math.cos( (6 * z )/ x - 5)
    end
end

module PartTwo
    def self.dectohex(number)
        hex_number = number.to_s(16)
        numbers = hex_number.count("0-9")
        letters = hex_number.count("a-fA-F")
        return numbers, letters
    end
end

module PartTree
    def self.korrector_strok(strings)
        corrected_strings = []
        symbols = ["щ", "ч", "ш", "ж"]
        strings.each do |string|
            corrected_string = ''
            string.split.map do |word|
                #онок енок -> ата ята
                if  word[-4..-1] == 'онок' || word[-4..-1] == 'енок'
                    if symbols.include?(word[-5])
                        word = word[0..-5] + 'ата'
                    else
                        word = word[0..-5] + 'ята'
                    end
                end
                corrected_string << word + ' '
            end
            corrected_strings << corrected_string
        end
        return corrected_strings        
    end
end


