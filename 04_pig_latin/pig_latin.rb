def translate(string)

  vowel = /\A[aeiou]/
  suffix  = "ay"
  special_case = /(\A.[chklmnp(qu)rtvw][chklmnp(qu)rtvw]|\A.[chklmnp(qu)rtvw])/
  words = string.split

  words.map do |word|
    if word =~ (special_case) && !(word =~ vowel)
      first_letters = word[special_case]
      word.sub!(special_case, "")
      word << first_letters
    elsif  !(word =~ vowel)
      first_letter = word[0]
      word.sub!(first_letter, "")
      word << first_letter
    end
    word << suffix
  end
  words.join(" ")
end
