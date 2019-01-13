
class Anagram

  attr_writer :match

  def initialize(word)
    @word = word
  end

  def match(match)
    match.find_all {|word| word.split('').sort == @word.split('').sort}
  end

end
