class Trigram
  attr_reader :text, :next_words

  def initialize(text)
    @text = text
    @words = @text.split
    @trigrams = @words.each_cons(3).to_a
    @next_words = Hash.new

    @trigrams.each do |words|
      key = strip_punc(words[0] + " " + words[1])
      @next_words[key] ||= []
      @next_words[key] << words.last
    end
  end

  def get(two_words)
    @next_words[strip_punc(two_words)]
  end

  def strip_punc(text)
    text.gsub(/[^a-z ]*/i, '').downcase
  end
end
