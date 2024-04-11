require 'date'

module PartOne
    def self.calculate_b(x, y, z)
        b = (1 + Math.cos(y - 2)) / (x**4 / 2 + Math.sin(z)**2)
    end
end

module PartTwo
    def self.finddate(string)
        dates = string.split(' ') #массив дат
        closest_date = dates.min_by {|date| (Date.today - Date.parse(date)).abs}
    end
end

module PartTree
    def self.korrector_strok(strings, new_word)
        new_strings = []
        strings.each do |string|
            new_strings << string.gsub(/#[^\s#]+/) { |word| word.gsub("#", "") == new_word ? word : new_word }
        end
        return new_strings
    end
end