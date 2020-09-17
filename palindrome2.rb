class String
  
  def palindrome?
    processed_content == processed_content.reverse
  end
  
  def blank?
    !!self.match(/^\s*$/)
  end

  private 

  def processed_content
    self.downcase
  end
end