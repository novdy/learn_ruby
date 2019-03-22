class Book
    attr_reader :title

    def title=(words)
        little_words = ['a', 'an', 'the', 'and', 'but', 'or', 'for', 'nor', 'on', 'at', 'to', 'from', 'by', 'over', 'of', 'in']
        words = words.split
        for word_num in 0..(words.length - 1) do
            if word_num == 0 || !little_words.include?(words[word_num])
                words[word_num] = words[word_num].capitalize
            end
        end
        @title = words.join(" ")
    end
end
