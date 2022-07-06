def caesar_cipher(string, shift)
    encoded = ""
    string.each_char do |char|
        num = char.ord
        if (char.between?("a", "z") || char.between?("A", "Z"))
            puts char.ord
            num += shift
            puts num
        end
        encoded += num.chr
        puts num.chr
    end
    encoded
end

puts caesar_cipher("What a string!", 5)