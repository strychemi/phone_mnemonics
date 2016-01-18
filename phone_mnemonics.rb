TELEBET = ["0", "1", "ABC", "DEF", "GHI", "JKL", "MNO", "PQRS", "TUV", "WXYZ"]

@mnemonic_list = []

def phone_mnemonics(number, digit=0, mnemonic="")
  if digit == number.length
    @mnemonic_list << mnemonic
  else
    TELEBET[number[digit].to_i].split("").each do |letter|
      phone_mnemonics(number, digit + 1, mnemonic + letter)
    end
  end
end

phone_mnemonics("248")
puts @mnemonic_list
