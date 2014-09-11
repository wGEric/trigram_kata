require 'trigram'
RSpec.describe Trigram do
  context "finds trigrams from text" do
    let(:text){ "the quick brown fox jumps over the lazy dog" }
    subject { described_class.new(text) }

    specify{ expect(subject.get("the quick")).to eq ["brown"] }
    specify{ expect(subject.get("brown fox")).to eq ["jumps"] }
    specify{ expect(subject.get("over the")).to eq ["lazy"] }
    specify{ expect(subject.get("the lazy")).to eq ["dog"] }
  end

  context "finds all words after" do
    let(:text){ "I wish I may I wish I might" }

    subject { described_class.new(text) }

    specify{ expect(subject.get("wish I")).to eq ["may", "might"] }
    specify{ expect(subject.get("I wish")).to eq ["I", "I"] }
  end
end
