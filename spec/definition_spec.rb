require('rspec')
require('definition')
require('word')
require('pry')

describe '#Definition' do

before(:each) do
  Word.clear()
  Definition.clear()
  @word = Word.new("Dogs", nil)
  @word.save()
end

describe('#==') do
it("is the same definition if it has the same attributes as another definition") do
  definition = Definition.new("Dogs", @word.id, nil)
  definition2 = Definition.new("Dogs", @word.id, nil)
  expect(definition).to(eq(definition2))
  end
end

  describe(".all") do
    it("returns a list of all definitions") do
      definition = Definition.new("Dogs", @word.id, nil)
      definition.save()
      definition2 = Definition.new("Cats", @word.id, nil)
      definition2.save()
      expect(Definition.all).to(eq([definition, definition2]))
    end
  end

  describe('.clear') do
    it("clear all definitions") do
      definition = Definition.new("Dogs", @word.id, nil)
      definition.save()
      definition2 = Definition.new("Cats", @word.id, nil)
      definition2.save()
      Word.clear()
      expect(Word.all).to(eq([]))
    end
  end

  describe('#save') do
    it("saves a definition") do
      definition = Definition.new("Dogs", @word.id, nil)
      definition.save()
      expect(Definition.all).to(eq([definition]))
    end
  end

  describe('.find') do
    it("finds a definition by id") do
      definition = Definition.new("Dogs", @word.id, nil)
      definition.save()
      definition2 = Definition.new("Cats", @word.id, nil)
      definition2.save()
      expect(Definition.find(definition.id)).to(eq(definition))
    end
  end

  describe('#update') do
    it("updates a word by id") do
      definition = Definition.new("Dogs", @word.id, nil)
      definition.save()
      definition.update("Cats", @word.id)
      expect(definition.name).to(eq("Cats"))
    end
  end

  describe('#delete') do
    it("deletes a definition by id") do
      definition = Definition.new("Dogs", @word.id, nil)
      definition.save()
      definition2 = Definition.new("Cats", @word.id, nil)
      definition2.save()
      definition.delete()
      expect(Definition.all).to(eq([definition2]))
    end
  end
end