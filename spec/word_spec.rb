require('rspec')
require('word')

describe '#Word' do

# before(:each) do
#   Word.clear()
# end
  describe(".all") do
    it("returns empty array when there are no words.") do
      expect(Word.all).to(eq([]))
    end
  end

  describe('#save') do
    it("saves a word") do
      word = Word.new("Dogs", nil)
      word.save()
      word2 = Word.new("Cats", nil)
      word2.save()
      expect(Word.all).to(eq([word, word2]))
    end
  end

  describe('#==') do
    it("is the same word if it has the same attributes as another word") do
      word = Word.new("Dogs", nil)
      word2 = Word.new("Dogs", nil)
      expect(word).to(eq(word2))
    end
  end
end