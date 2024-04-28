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
        puts 'Введите массив чисел'
        inp = []
        loop do
          x = gets.chomp
          if x.empty?
            break
          end
          inp << x.to_i
        end
        puts "Наибольшее число одинаковых подряд идущих чисел: #{PartTwo.find_max_ryid(inp)}"
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
        puts "Введите ширину: "
        width = gets.chomp.to_i
        puts "Делаю магические преобразования"
        puts "Исходные строки: #{strings}"
        puts "Скорректированные строки: #{PartTree.korrektor_strok(strings, width)}"
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
