# def palindrome?(string)
#   process_content = string.downcase
#   process_content == process_content.reverse
# end

class Phrase 
  attr_accessor :content
  def initialize(text)
    @content = text
  end

  def palindrome?
    process_content = self.content.downcase
    process_content == process_content.reverse
  end

  def louder
    self.content.upcase
  end
end
