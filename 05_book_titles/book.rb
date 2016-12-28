class Book
# write your code here
def title=(value)
  @title = value
end


def self.title
  @title
end


def capitalize_word word
  minor_words = ['the', 'a', 'and', 'in', 'of', 'an']
  if minor_words.include? word
    return word
  else
    return word.capitalize
  end
end

def title
  a = @title

  word_array = a.split
  new_word_array = word_array.map { |x| capitalize_word x}
  new_word_array[0] = new_word_array[0].capitalize
  return new_word_array.join(' ')
end



end
