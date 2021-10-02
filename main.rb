# frozen_string_literal: true

# @param min_x [Numeric]
# @param max_x [Numeric]
# @param iteration_quantity [Numeric]
# @param func [Proc]
def intg(min_x, max_x, iteration_quantity = 1000, func = nil, &block)
  func ||= block
  min_x = min_x.to_f
  max_x = max_x.to_f
  range = max_x - min_x
  dx = range.to_f / iteration_quantity
  dx * (min_x...max_x).step(dx).reduce do |acc, x|
    acc + func.call(x)
  end
end
