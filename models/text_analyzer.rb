# Your TextAnalyzer model code will go here.
class TextAnalyzer

attr_reader :text

def initialize(text)
  @text = text.downcase
end

def count_of_words
  words = @text.split(' ')
  words.count
end

def count_of_vowels
  @text.scan(/[aeiou]/).count
end

def count_of_consonants
  @text.scan(/[bcdfghjklmnpqrstvwxyz]/).count
end

#returns a hash with the most used letter as the only key, and the number of times it is used as the only value
def most_used_letter
  s1 = @text.gsub(/[^a-z]/, '')
  arr= s1.split('')
  arr1 = arr.uniq #rids chars array of duplicates
  arr2 = {}

  #makes an object with a count of all unique characters
  arr1.map do |c|
    arr2[c] = arr.count(c) #count searches an array and returns the number of occurrances of the specified element
  end

  #to start the following loop with the first key/value pair of arr2
  biggest = { arr2.keys.first => arr2.values.first }
  arr2.each do |key, value|
    if value > biggest.values.first
      biggest = {}
      biggest[key] = value
    end
  end

  biggest
end

end
