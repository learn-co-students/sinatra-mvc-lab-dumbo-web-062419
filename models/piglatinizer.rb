class PigLatinizer

    attr_accessor :words

    def initialize(words)
        @words = words
    end

    def piglatinize
        latinized_phrase = ""

        split_phrase = @words.split(" ")
        latinized_split_phrase = split_phrase.each do |word|
           latinize_word(word)
        end

        latinized_split_phrase.each do |word|
            latinized_phrase << word + " "
        end

        latinized_phrase
    end

    def latinize_word(word)
        vowels = ['a','e','i','o','u']

        first_letter = word[0]

        vowels.each do |vowel|
            if word[0] == vowel
                return word << "way"
            end
        end


        if word.slice(0,2) == "ch"
            word << word.slice!(0,2)
            word << "ay"
        elsif word.slice(0,3) == "sch"
            word << word.slice!(0,3)
            word << "ay"
        elsif word.slice(0,3) == "str"
            word << word.slice!(0,3)
            word << "ay"
        else
            word << first_letter
            word << "ay"
            word.slice!(0)
        end

        word
    end

end