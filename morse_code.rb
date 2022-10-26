MORSE_LETTERS = {
'.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
'.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
'..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
'--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
'--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
'..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
'-.--' => 'Y', '--..' => 'Z'
}


def decode_char(morse)
MORSE_LETTERS[morse].upcase
end

def decode_word(word)
characters = word.split
characters.each_with_index do |char, index|
characters[index] = decode_char(char)
end
characters.join
end

puts decode_char('-.-' )
puts decode_word("-- -.--")