module PartOne
    def self.calculate_y (x)
        y = (1 - (1 +(Math.sin(x)).abs)**0.5) / (2 + Math.cos(x)**2)
    end
end

module PartTwo
    def self.isPalindrome(s)
        down_s = s.downcase
        down_s == down_s.reverse
    end
end

module PartTree
    def self.korrector_strok(strings)
        counter_corrected = 0
        corrected_strings = []
        strings.each do |string|
            corrected_string = ''
            string.split.map do |word|
                #puts word
                if  word.match(/^[a-zA-Z0-9]+$/)
                    if word.match(/^[0-9]/)
                        counter_corrected += 1
                        word = "_" + word[1..-1]
                    end
                    #puts word
                    corrected_string << word + ' '
                end
            end
            corrected_strings << corrected_string
        end
        return [corrected_strings, counter_corrected]          
    end
end


