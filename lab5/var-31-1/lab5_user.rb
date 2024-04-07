# frozen_string_literal: true

require_relative './lab5_main'

loop do
    puts "Выберите номер задания: [1], [2], [3]\nИли напишите [выход/exit], чтобы выйти"
    case gets.chomp
    when '1'
        puts 'Введите x:'
        x = gets.chomp.to_f
        puts "Результат вычисления функции: #{PartOne.calculate_y x}"
    when '2'
        puts 'Введите строку:'
        inp = gets.chomp
        if PartTwo.isPalindrome(inp)
            puts "Строка является палиндромом"
        else
            puts "Строка не является палиндромом"
        end
    when '3'
        puts 'Введтте последовательность строк из слов, разделённых пробелмами:'
        strings = []
        loop do
            string = gets.chomp
            if string.empty?
                break
            end
            strings << string
        end
        puts "Делаю магические преобразования"
        m =  PartTree.korrector_strok(strings)
        puts "Исходные строки: #{strings}"
        puts "Скорректированные строки: #{m[0]}"
        puts "Количество корректировок: #{m[1]}" 
    when 'выход'
        puts 'Завершаю работу'
    break
    when 'exit'
        puts 'Завершаю работу'
        break
    else
        puts 'Некорректный выбор'
    end
    puts
end
