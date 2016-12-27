#write your code here
def isVowel chr
  chr = chr.upcase
  return (chr.length == 1) && (chr == "A" || chr == "E" || chr == "I" || chr == "O" || chr == "U" || chr == "Y")
end

def isConsonant chr
  return !isVowel(chr) || chr == "qu" || chr == "sch"
end

def translate_helper str
  if str.length >= 3 && str[0..2] == "squ"
    first_part = str[0..2]
    return str[first_part.length..str.length] + first_part + "ay"
  elsif str.length >= 2 && str[0..1] == "qu"
    first_part = str[0..1]
    return str[first_part.length..str.length] + first_part + "ay"
  elsif isConsonant(str[0])
    first_part = str.split(/([aeiou].*)/)[0]
    return str[first_part.length..str.length] + first_part + "ay"
  else
    return str + "ay"
  end
end

def translate str
  str_arr = str.split
  str_arr_cap = str_arr.map { |x| translate_helper(x)}
  return str_arr_cap.join(' ')
end
