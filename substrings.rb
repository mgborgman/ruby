dictionary = ["below", "below", "down","go","going","horn","how","howdy","it","i","low","own","be", "part","partner","sit"]

def substrings(string, array_of_words)
	hash = Hash.new
	count = 0
	array_of_words.each do |word|
		output = string.downcase.scan(word)
		if output != []
			count = output.length
			hash[output[0]] = count
		end 
	end
	return hash
end

result = substrings("Howdy partner, sit down! How's it going?", dictionary)

puts "#{result}"

