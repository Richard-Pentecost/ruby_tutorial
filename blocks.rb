def sandwich
  puts 'top bread'
  yield
  puts 'bottom bread'
end

sandwich { puts "bacon, lettuce and tomato" }
  
def tag(tagname, text)
  html = "<#{tagname}>#{text}</#{tagname}>"
  yield html
end

tag("p", "Lorem ipsum dolor sit amet") do |markup|
  puts markup
end

def bottles(number)
  number.downto(1) do |bottles|
    if bottles != 1
      puts "#{bottles} bottles of beer on the wall"
    else
      puts "#{bottles} bottle of beer on the wall"
    end
  end
end

bottles(5)

def bad_sandwich(contents)
  puts 'top bread'
  contents
  puts 'bottom bread'
end

bad_sandwich(puts 'bacon, lettuce and tomato')