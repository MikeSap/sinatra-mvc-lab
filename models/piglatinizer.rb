class PigLatinizer

    
    def piglatinize(user_input)
        split = user_input.split(" ")
        pig_array = split.map {|word| pig_word(word)}
        pig_array.join(" ")
    end

    def pig_word(word)
        word = word
        first_letter = word[0]
        vowels = ["a","e","i","o","u"]
        if vowels.include?(first_letter.downcase)
           pig_translation =  word + "way"
        elsif !vowels.include?(word[0].downcase) && !vowels.include?(word[1].downcase) && !vowels.include?(word[2].downcase)
            split = word.split("")
        first_letter = split.shift
        second_letter = split.shift
        third_letter = split.shift
            pig_translation =  split.join + first_letter + second_letter + third_letter + "ay"
        elsif !vowels.include?(word[0].downcase) && !vowels.include?(word[1].downcase)
        split = word.split("")
        first_letter = split.shift
        second_letter = split.shift
        pig_translation =  split.join + first_letter + second_letter + "ay"
        else
        split = word.split("")
        split.shift
        pig_translation =  split.join + first_letter + "ay"
        end
        pig_translation
    end

end