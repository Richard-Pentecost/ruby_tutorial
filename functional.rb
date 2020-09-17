states = ['Kansas', 'Nebraska', 'North Dakota', 'South Dakota']

# *****************************************
# using map method (or collect)

# Returns a URL-friendly version of a string.
# Example: "North Dakota" -> 'north-dakota'
def urlify(string)
  string.downcase.split.join('-')
end

# urls: Imperative version
def imperative_urls(states)
  urls = []
  states.each do |state|
    urls << urlify(state)
  end
  urls
end

p imperative_urls(states)

# urls: Functional version
def functional_urls(states)
  states.map { |state| urlify(state)}
end

puts functional_urls(states).inspect

def functional_urls_collect(states) 
  states.collect { |state| urlify(state) }
end

puts functional_urls_collect(states).inspect


def createUrl(states) 
  url = "https://example.com/"
  states.map{ |state| "#{url}#{state.downcase.split.join('-')}" }.inspect
end

# puts createUrl(states)

# *****************************************
# using select method (or reject) (equivalent to filter in JS)

def imperative_singles(states) 
  singles = []
  states.each do |state|
    if state.split.length == 1
      singles << state
    end
  end
  singles
end

puts imperative_singles(states).inspect

def functional_singles(states)
  states.select { |state| state.split.length == 1 }
end

puts functional_singles(states).inspect

def functional_singles_reject(states)
  states.reject { |state| state.split.length == 2 }
end

puts functional_singles_reject(states).inspect

def returns_dakotas(states)
  states.select { |state| state.include?('Dakota')}
end

puts returns_dakotas(states).inspect

def returns_dakota_length(states)
  states.select { |state| state.split.length == 2 }
end

puts returns_dakota_length(states).inspect

# *****************************************
# using reduce method (or inject)

numbers = 1..10

def imperative_sum(numbers)
  total = 0
  numbers.each do |n|
    total += n
  end
  total
end

puts imperative_sum(numbers)

def functional_sum(numbers) 
  numbers.reduce { |total, n| total + n }
end

puts functional_sum(numbers)

def imperative_lengths(states)
  lengths = {}
  states.each do |state|
    lengths[state] = state.length
  end
  lengths
end

puts imperative_lengths(states)

def functional_lengths(states) 
  states.reduce({}) do |lengths, state|
    lengths[state] = state.length
    lengths
  end
end

puts functional_lengths(states)

def refactor_functional_lengths(states)
  states.reduce({}) { |lengths, state| lengths[state] = state.length; lengths }
end

puts refactor_functional_lengths(states)

def functional_lengths_inject(states)
  states.inject({}) { |lengths, state| lengths[state] = state.length; lengths }
end

puts functional_lengths_inject(states)
