# frozen_string_literal: true

module PartOne
  ALPHA = ('А'..'я').to_a + ('A'..'Z').to_a + ('a'..'z').to_a

  def self.emulate(f_file = File.open('F.txt', 'w+'), h_file = File.open('H.txt', 'w+'))
    create_random_file f_file
    write_magic f_file, h_file
    [f_file, h_file].map(&:close)
  rescue StandardError => e
    puts "Что-то пошло не так: #{e.message}"
  end

  def self.create_random_file(file_name)
    100.times { file_name.write "#{random_word} " }
    file_name.truncate(file_name.size - 1)
  end

  def self.write_magic(file_read, file_write)
    file_read.seek 0
    text = file_read.read
    puts text.inspect
    new_text = ""
    text.each_index do |index|
      if text[index] == 'a' || text[index] == 'а'
        new_text << text[index + 1]
      end
    end
    file_write.write new_text
  end

  def self.random_word
    (Random.new.rand(2..10).times.map { ALPHA.sample }).join
  end
end

puts 'Do PartOne'
PartOne.emulate
puts 'Done PartOne'
