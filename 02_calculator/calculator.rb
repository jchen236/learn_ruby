#write your code here
def add (s1, s2)
  return s1 + s2
end

def subtract(s1, s2)
  return s1-s2
end

def sum arr
  sum = 0
  arr.each {|x| sum = sum + x}
  return sum
end

def multiply (s1, s2)
  return s1 * s2
end

def power (s1, s2)
  return s1**s2
end

def factorial n
  if n == 1 or n == 0
    return 1
  else
    return n * factorial(n-1)
  end

end
