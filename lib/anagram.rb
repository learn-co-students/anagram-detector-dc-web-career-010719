class Anagram
  attr_accessor :text

  def initialize(text)
    self.text = text
    @chars = text.split('').sort
  end

  def match(words)
    words.select do |w|
      w.split('').sort == @chars 
    end
  end
end