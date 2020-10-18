require('rspec')
require('word')

describe '#Word' do

before(:each) do
  Word.clear()
end

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

  describe('.clear') do
    it("clear all words") do
      word = Word.new("Dogs", nil)
      word.save()
      word2 = Word.new("Cats", nil)
      word2.save()
      Word.clear()
      expect(Word.all).to(eq([]))
    end
  end

  describe('.find') do
    it("finds a word by id") do
      word = Word.new("Dogs", nil)
      word.save()
      word2 = Word.new("Cats", nil)
      word2.save()
      expect(Word.find(word.id)).to(eq(word))
    end
  end

  describe('#update') do
    it("updates a word by id") do
      word = Word.new("Dogs", nil)
      word.save()
      word.update("Cats")
      expect(word.name).to(eq("Cats"))
    end
  end

end