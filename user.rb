# frozen_string_literal: true

require './main'

puts "Here are some integral computations
Integral sin(x)/x * dx from 0.1 to 1 (code block):
#{intg(0.1, 1, 2000) { |x| Math.sin(x) / x }}
Integral tg(x + 1)/(x + 1) * dx from 1 to 2 (lambda):
#{intg(1, 2, 2000, ->(x) do Math.tan(x + 1) / (x + 1) end)}"
