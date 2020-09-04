def fromRoman(romanNumber)
  # Checks for Roman numbers
  if romanNumber.include?('I') || romanNumber.include?('V') || romanNumber.include?('X') || romanNumber.include?('L') || romanNumber.include?('C') || romanNumber.include?('D') || romanNumber.include?('M')

    # init variables
    values = { "M" => 1000, "D" => 500, "C" => 100, "L" => 50, "X" => 10, "V" => 5, "I" => 1 }
    ans = 0
    prev = 0

    # string validation
    romanNumber = romanNumber.upcase
    romanNumber = romanNumber.reverse

    # converts to arabic numbers
    romanNumber.each_char { |letter|
      if values[letter] >= prev
        ans += values[letter]
      else
        ans -= values[letter]
      end
      prev = values[letter]
    }

    # returns final answer
    return ans
  else
    # error if not roman number
    raise TypeError
  end
end

def toRoman(arabicNumber)
  # init variables
  values = { 1 => "I", 5 => "V", 10 => "X", 50 => "L", 100 => "C", 500 => "D", 1000 => "M"}
  ans = ""

  #converts to roman numerals
  if (arabicNumber >= 1) && (arabicNumber <= 3999)
    while arabicNumber >= 1000
      ans += "M"
      arabicNumber -= 1000
    end
    while arabicNumber >= 900
      ans += "CM"
      arabicNumber -= 900
    end
    while arabicNumber >= 500
      ans += "D"
      arabicNumber -= 500
    end
    while arabicNumber >= 400
      ans += "CD"
      arabicNumber -= 400
    end
    while arabicNumber >= 100
      ans += "C"
      arabicNumber -= 100
    end
    while arabicNumber >= 90
      ans += "XC"
      arabicNumber -= 90
    end
    while arabicNumber >= 50
      ans += "L"
      arabicNumber -= 50
    end
    while arabicNumber >= 40
      ans += "XL"
      arabicNumber -= 40
    end
    while arabicNumber >= 10
      ans += "X"
      arabicNumber -= 10
    end
    while arabicNumber >= 9
      ans += "IX"
      arabicNumber -= 9
    end
    while arabicNumber >= 5
      ans += "V"
      arabicNumber -= 5
    end
    while arabicNumber >= 4
      ans += "IV"
      arabicNumber -= 4
    end
    while arabicNumber >= 1
      ans += "I"
      arabicNumber -= 1
    end

    # returns final answer
    return ans
  else
    # error if out of range
    raise RangeError
  end
end
