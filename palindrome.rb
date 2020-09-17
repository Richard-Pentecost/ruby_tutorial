def palindrome?(string)
  process_content = string.downcase
  process_content == process_content.reverse
end