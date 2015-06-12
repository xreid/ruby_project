def add(*values)
  values.inject(0) { | sum, value | sum += value }
end

def subtract(*values)
  values.inject(values.shift) { | result, value |  result -= value}
end

def sum(values)
  values.inject(0) { | sum, value | sum += value }
end

def multiply(*values)
  values.inject(1) { | result, value | result *= value}
end

def power(base, exponent)
  base**exponent
end

def factorial(value)
  if value == 0
    1
  else
    value * factorial(value-1)
  end
end
