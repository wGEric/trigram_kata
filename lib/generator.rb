module Generator
  PUNC = %w{. ? !}.inject([]){ |all, punc| all + [punc, "#{punc}\""]}

  def self.generate(trigram, prompt, size)
    @lookup = prompt.split
    @contents = @lookup.dup
    @trigram = trigram

    size.times{ add_word }

    @contents.join(" ")
  end

  def self.add_word
    if possible_words = @trigram.get(@lookup.join(" "))
      new_word = possible_words.sample
      @lookup.shift
      @lookup << new_word

      new_word = new_word.capitalize if new_word.end_with?(*PUNC)

      @contents << new_word
    end
  end
end
