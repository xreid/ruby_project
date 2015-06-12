def reverser
  yield.split.map(&:reverse).join(" ")
end

def adder(value = 1)
  yield + value
end

def repeater(amount = 1)
  amount.times { yield }
end
