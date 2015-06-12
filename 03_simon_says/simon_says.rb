def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, times = 2)
  ("#{string} " * times).strip
end

def start_of_word(string, amount)
  string[0..amount-1]
end

def first_word(string)
  string.split[0]
end

def titleize(title)
  lowercase_words = ["the", "a", "an", "to" "of", "and", "over", "by"]
  words = title.split
  words.each do |word|
    if words.index(word) == 0
      word.capitalize!
    elsif lowercase_words.include?(word)
      next
    else
      word.capitalize!
    end
  end
  words.join(" ")
end
