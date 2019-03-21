def translate(phrase)
    words = phrase.split
    for word_index in 0..(words.length - 1) do
        char_index = 0

        until vowel_at_index?(words[word_index], char_index) || char_index == words[word_index].length
            phoneme = get_phoneme_at_index(words[word_index], char_index)
            if phoneme != -1
                char_index += phoneme.length - 1
            end

            char_index += 1
        end

        if char_index > 0
            words[word_index] = words[word_index][(char_index)..-1] + words[word_index][0..(char_index - 1)]
        end

        words[word_index] += 'ay'
    end

    return words.join(' ')
end

def vowel_at_index?(word, index)
    vowels = ['a', 'e', 'i', 'o', 'u']
    return vowels.include?(word[index])
end

# If method finds a phoneme, returns phoneme, else returns error code -1
def get_phoneme_at_index(word, index)
    phonemes = ['qu']

    phonemes.each do |phoneme|
        differential = 0

        phoneme.each_char do |char|
            if char == word[index + differential]
                differential += 1
            else
                break
            end
        end

        if phoneme.length == differential
            return phoneme
        end
    end

    return -1
end