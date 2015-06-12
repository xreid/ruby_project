class Book

  def title=(input)
    lowercase_words = ["a", "an", "and", "but", "by", "in", "of", "over", "the", "to" ]
    input = input.split
    input.map do |word|
      unless lowercase_words.include?(word) && input.index(word) != 0
        word.capitalize!
      end
    end
    @title = input.join(" ")
  end

  def title
    @title
  end

end
