# frozen_string_literal: true

module PartOne
  def self.counter_riad(eps)
    med = eps + 0.5
    ans = 0
    counter = 0
    key = 1
    loop do
      temp = ans
      ans += + 1.0 / (key * (key + 1) * (key + 2) * (key + 3))
      med = (temp - ans).abs
      counter += 1
      key += 1
      #puts [temp, ans, med, counter, key, eps]
      break unless med > eps
    end
    [ans, counter]
  end
end

module PartTwo
  def self.metod_enumerator(eps)
    enumerator = Enumerator.new do |yielder|
      med = eps + 0.5
      ans = 0
      counter = 0
      key = 1
      loop do
        temp = ans
        ans += 1.0 / (key * (key + 1) * (key + 2) * (key + 3))
        med = (temp - ans).abs
        counter += 1
        key += 1
        yielder << [med, ans, counter]
      end
    end
    enumerator.find { |el| el[0] <= eps }[1, 2]
  end
end

module PartTree
  def self.differ(start, h_delta, func = nil, &block)
    coords = []
    diff_coords = []
    func ||= block
    (0..2).each do |iter|
      coords << func.call(start + h_delta * iter)
    end
    diff_coords << (-3 * coords[0] + 4 * coords[1] - coords[2]) / (2 * h_delta)
    diff_coords << (-coords[0] + coords[2]) / (2 * h_delta)
    diff_coords << (coords[0] - 4 * coords[1] + 3 * coords[2]) / (2 * h_delta)
    diff_coords
  end
end
