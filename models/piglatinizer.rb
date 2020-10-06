class PigLatinizer
    def initialize
        @string
    end

    def piglatinize(phrase)
        phrase_array = phrase.split(" ")
        phrase_array.map{|word| word_change(word)}.join(' ')
    end
    def word_change(word)
        word_array = word.split('')
        #This is a capitalizer function. It made the Pig Latinized strings come out prettier than the final version herein. But the tests failed the function. Keeping it for bragging rights.
        # if word_array[0].downcase != word_array[0]
        #     caps = true
        # else
        #     caps = false
        # end
        spot = 0
        word_array.each do |letter|
            break if ['a','e','i','o','u'].any? {|compare| compare == letter.downcase}
            spot += 1
        end
        change = word_array.shift(spot)
        if change == []
            word_array << "way"
        else
            change.each do |letter|
                word_array << letter
            end
            word_array << "ay"
        end
        #This is a remnant of the capitalizer function.
        # if caps == false
        #     word_array.join
        # else
        #     word_array.join.capitalize
        # end
        word_array.join
    end


end