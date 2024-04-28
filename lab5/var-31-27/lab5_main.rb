module PartOne
    def self.calculate_y(x, z)
        Math.sin((35.5 * z )/ (x - 5)) + (x**2) / (2 * Math::E**x)
    end
end

module PartTwo
    def self.find_max_ryid(mass)
        max_count = 0
        current_count = 1
        mass.each_index do |index|
            if mass[index] == mass[index + 1]
                current_count+=1
            else
                max_count = [max_count, current_count].max
                current_count = 1
            end
        end
        max_count
    end
end

module PartTree
    def self.korrektor_strok(strings, width)
        new_strings = []
        strings.each do |string|
            words = string.split(" ")
            if words.length == 1
                new_strings << string.ljust(width)
            else
                extra_spaces = width - string.length #количество пробелов между словами
                new_string = ""
                words.each do |word|
                    new_string << word
                    extra_spaces.times do
                        new_string << " "
                    end
                end
                new_strings << new_string.strip
            end
        end
        new_strings
    end
end
