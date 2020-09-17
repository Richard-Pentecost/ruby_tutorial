# def palindrome?(string)
#   process_content = string.downcase
#   process_content == process_content.reverse
# end

class Phrase < String

  def processor(string)
    string.downcase
  end 

  def processed_content
    processer(self)
  end

  def palindrome?
    processed_content == processed_content.reverse
  end

  def louder
    self.upcase
  end
end

class TranslatedPhrase < Phrase
  attr_accessor :translation

  def initialize(content, translation)
    super(content)
    @translation = translation
  end

  def processed_content
    processor(translation)
  end
end

