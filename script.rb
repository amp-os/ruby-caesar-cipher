def caesar_cipher(string, shift)
    result = ""
    string.each_char do |char|
        if (char.between?("a", "z") || char.between?("A", "Z"))
            code = char.ord
            char_shift_offset = char <= "Z" ? 65 : 97
            code = ((code - char_shift_offset + shift) % 26) + char_shift_offset
            char = code.chr
        end
        result += char
    end
    result
end

puts caesar_cipher("dCode Caesar", -166)