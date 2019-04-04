class PigLatinizer
#Convert a string into pig latin!
  def initialize
  end

  def word_piglatinize (str)
    str1="aeiou"
    str2=(/\A[aeiou]/) # is the first letter a vowel?
    vowel = str1.scan(/\w/)
    alpha =('a'..'z').to_a
    con = (alpha - vowel).join
    word = str.downcase.scan(/\w/)
    if vowel.include?(word[0]) #word begins with a vowel sound, add an "ay" sound to the end of the word
      str =~ str2
      str + "way"
    elsif (con.include?(word[0])) && (con.include?(word[1])) && (con.include?(word[2]))
      # binding.pry
      # word[0..2]=~(/\A[con]/)
      s = str.slice!(/^.../)
      str + s + "ay"
    elsif (con.include?(word[0])) && (con.include?(word[1]))
      #word[0..1]=~(/\A[con]/)
      s = str.slice!(/^../)
      str + s + "ay"
    elsif con.include?(word[0])# word begins with a consonant sound, move it to the end of the word, and then add an "ay" sound to the end of the word
      str != str2
      s = str.slice!(/^./)
      str + s + "ay"
    end
  end

  def piglatinize(sentence)
    # binding.pry
    array = sentence.split(" ")
    if array.length > 1
      array.map { |i| i.word_piglatinize  }
    else
      sentence.word_piglatinize
    end
  end

end
