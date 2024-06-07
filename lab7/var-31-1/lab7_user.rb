# frozen_string_literal: true

require_relative './lab7_main'

loop do
  puts "Выберите номер задания: [1], [2]\nИли напишите [выход/exit], чтобы выйти"
  case gets.chomp
  when '1'
    puts 'делаю магию с файлами'
    PartOne.emulate 'F.txt', 'H.txt'
    puts 'магия сделана'
  when '2'
    puts 'иерархия классов'
    puts 'Введите длину и ширину доски'
    length = gets.chomp.to_i
    weight = gets.chomp.to_i
    doska = PartTwo::Board.new length, weight
    puts "#{doska} с площадью #{doska.area}"
    puts "Введите высоту ящика"
    height = gets.chomp.to_i
    box = PartTwo::Box.new length, weight, height
    puts "#{box} с объёмом #{box.volume}"
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
