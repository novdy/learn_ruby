def echo(str)
	return str
end

def shout(str)
	return str.upcase
end

def repeat(str, times = 2)
	return ((str + " ") * times).strip
end

def start_of_word(str, place)
	return str[0..(place-1)]
end

def first_word(words)
	return words.split[0]
end

def titleize(words)
	little_words = ['a', 'an', 'the', 'and', 'but', 'or', 'for', 'nor', 'on', 'at', 'to', 'from', 'by', 'over']
	words = words.split
	for word_num in 0..(words.length - 1) do
		if word_num == 0 || !little_words.include?(words[word_num])
			words[word_num] = words[word_num].capitalize
		end
	end
	return words.join(" ")
end
