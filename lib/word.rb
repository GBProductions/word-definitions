class Word
  @@words= []
  # attr_accessor :name

  def initialize(name)
    @name = name
  end

  def self.all()
    @@words
  end

  def self.find(name)
  end

end

