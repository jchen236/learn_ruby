#write your code here
def echo str
  return str
end

def shout str
  return str.upcase
end

def repeat (str, num = 2)
  return (str + " ") * (num-1) + str
end

def start_of_word (str, n)
  return str[0..n-1]
end

def first_word str
  str_arr = str.split
    return str_arr[0]
  end

def titleize str
  str_arr = str.split
  str_arr_cap = str_arr.map { |x| x.capitalize}
  return str_arr_cap.join(' ')

end
