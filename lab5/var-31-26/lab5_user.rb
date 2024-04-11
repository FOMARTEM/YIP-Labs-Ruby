# frozen_string_literal: true

require_relative './lab5_main'

loop do
    puts "Выберите номер задания: [1], [2], [3]\nИли напишите [выход/exit], чтобы выйти"
    case gets.chomp
    when '1'
        puts 'Введите x:'
        x = gets.chomp.to_f
        puts "Введите y:"
        y = gets.chomp.to_f
        puts "Введите z:"
        z = gets.chomp.to_f
        puts "Результат вычисления функции: #{PartOne.calculate_b(x, y, z)}"
    when '2'
        puts 'Введите строку дат в ISO-формате (YYYY-MM-DD):'
        inp = gets.chomp
        puts "Ближайшая дата к сегодняшнему дню: #{PartTwo.finddate inp}"
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
        puts "Введите слово на которое будем заменять: "
        word = gets.chomp
        puts "Делаю магические преобразования"
        puts "Исходные строки: #{strings}"
        puts "Скорректированные строки: #{PartTree.korrector_strok(strings, word)}"
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
