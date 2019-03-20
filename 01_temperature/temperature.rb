def ftoc(temp)
	return (temp.to_f - 32) * (5.to_f / 9)
end

def ctof(temp)
	return temp.to_f * (9.to_f / 5) + 32
end
