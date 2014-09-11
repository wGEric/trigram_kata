require 'generator'
require 'trigram'

RSpec.describe Generator do
  let(:text){ "the lazy fox jumped over the quick brown dog" }
  let(:trigram){ Trigram.new(text) }

  subject { described_class }

  it "generates text" do
    generated = subject.generate(trigram, "the quick", 4)
    expect(generated.split(" ").size).to eq(4)
  end
end
