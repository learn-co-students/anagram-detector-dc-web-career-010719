class Anagram
  attr_accessor :word, :anagrams

  def initialize(word)
    @word = word
  end

  def match(anagrams)
    anagram_index = []
    word_letters = self.word.split("").sort
    #complex.. splits each word in anagrams into it's letters. then it compares that to the letters from the given word. it tracks the index of each set of anagram letters and if it finds a match, it maps the index value of the match. this gives us an array of indexes from the original array where we have an anagram.
    anagram_index = anagrams.each_with_index.select {|word,index| word.split("").sort == word_letters}.map(&:last)
    anagram_index.map {|num| anagrams[num]}
  end
end
