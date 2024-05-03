# frozen_string_literal: true

require_relative './lab6_main'

loop do
  puts "Выберите номер задания: [1], [2], [3]\nИли напишите [выход/exit], чтобы выйти"
  case gets.chomp
  when '1'
    puts 'Вычисляю какую-то сумму'
    res1 = PartOne.counter_riad(0.01)
    res2 = PartOne.counter_riad(0.001)
    puts "сумма с точностью 10**-2: #{res1[0]}"
    puts "сумма с точностью 10**-3: #{res2[0]}"
    puts "разница итераций между 1 и 2 точностью: #{res2[1] - res1[1]}"
  when '2'
    puts 'Вычисляю какую-то сумму другим методом'
    res1 = PartTwo.metod_enumerator(0.01)
    res2 = PartTwo.metod_enumerator(0.001)
    puts "сумма с точностью 10**-2: #{res1[0]}"
    puts "сумма с точностью 10**-3: #{res2[0]}"
    puts "разница иераций между 1 и 2 точностью: #{res2[1] - res1[1]}"
  when '3'
    puts 'Какой-то differ'
    puts "Значение первой производной в точках: #{PartTree.differ(0.49, 0.1, ->(x_v) {Math.sin(x_v)} )}"
    puts "Значение второй производной в точках: #{PartTree.differ(0.49, 0.1) {|x_v| Math.tan(x_v + 1)}}"
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
