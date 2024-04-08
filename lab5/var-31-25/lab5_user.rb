# frozen_string_literal: true

require_relative './lab5_main'

loop do
    puts "Выберите номер задания: [1], [2], [3]\nИли напишите [выход/exit], чтобы выйти"
    case gets.chomp
    when '1'
        puts 'Введите x:'
        x = gets.chomp.to_f
        puts "Введите z:"
        z = gets.chomp.to_f
        puts "Результат вычисления функции: #{PartOne.calculate_y(x, z)}"
    when '2'
        puts 'Введите число:'
        inp = gets.chomp.to_i
        m = PartTwo.dectohex inp
        puts "Количество цифр в 16 записи: #{m[0]}"
        puts "Количество букв в 16 записи: #{m[1]}"
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
        puts "Исходные строки: #{strings}"
        puts "Скорректированные строки: #{PartTree.korrector_strok strings}"
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
