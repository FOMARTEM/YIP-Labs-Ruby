# frozen_string_literal: true

module PartOne
  ALPHA = ('A'..'Z').to_a + ('a'..'z').to_a

  def self.emulate(f_file, h_file)

  rescue StandardError => e
    puts "Что-то пошло не так: #{e.message}"
  end

  def self.create_random_file(file_name)
    100.times { file_name.write "#{random_word} " }
    file_name.truncate(file_name.size - 1)
  end

  def self.random_word
    (Random.new.rand(2..10).times.map { ALPHA.sample }).join
  end
end

module PartTwo
  class Board
    def initialize(length = 0, width = 0)
      raise ArgumentError, 'Wrong [length] should be Number' unless length.is_a? Numeric
      raise ArgumentError, 'Wrong [width] should be Number' unless width.is_a? Numeric

      @length = length
      @width = width
    end

    def get
      [@length, @width]
    end

    def to_s
      "Board length = #{@length}, width = #{@width}"
    end

    def area
      @length * @width
    end
  end

  class Box < Board
    def initialize(length = 0, width = 0, height = 0)
      raise ArgumentError, 'Wrong [height] should be Number' unless height.is_a? Numeric

      super(length, width)
      @height = height
    end

    def to_s
      "Box length = #{@length}, width = #{@width}, height = #{@height}"
    end

    def get
      super << @height
    end

    def volume
      @length * @width * @height
    end
  end
end

=begin
puts 'Do PartOne'
PartOne.emulate
puts 'Done PartOne'
=end

puts 'Do PartTwo'
board = PartTwo::Board.new 2, 2
puts "#{board} with area #{board.area}"
box = PartTwo::Box.new 2, 2, 2
puts "#{box} with volume #{box.volume}"
puts 'Done PartTwo'
