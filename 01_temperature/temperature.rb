def ftoc(temp_in_celcius)
  (temp_in_celcius - 32) * 5.0 / 9.0
end

def ctof(temp_in_fahrenheit)
  (temp_in_fahrenheit / 5.0 * 9.0)+ 32
end
