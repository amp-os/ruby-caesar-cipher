def caesar_cipher(string, shift)
    encoded = ""
    string.each_char do |char|
        if (char.between?("a", "z") || char.between?("A", "Z"))
            code = char.ord
            puts char.ord
            code += shift
            puts code
            char = code.chr
        end
        encoded += char
        puts char
    end
    encoded
end

puts caesar_cipher("What a string!", 5)