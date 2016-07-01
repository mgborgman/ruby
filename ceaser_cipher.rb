def ceaser_cipher(string, shift)
	ascii_array = (65..90).to_a
	ascii_array.concat((97..122).to_a)

	string.each_char do |letter|
		if ascii_array.include?(letter.ord)
			#org_ascii = ascii_array.index(letter.ord)
			org_ascii = letter.ord
			if (org_ascii + shift > ascii_array[-1])
				new_ascii = ((org_ascii + shift) - 58)
				#new_letter_ascii = ascii_array[new_ascii]
				#letter = new_letter_ascii.chr
				letter = new_ascii.chr
				print "#{letter}"
			elsif ((org_ascii + shift > 90) and (org_ascii + shift < 97))
				new_ascii = ((org_ascii + shift) + 6)
				letter = new_ascii.chr
				print "#{letter}"
			else
				new_ascii = org_ascii + shift
				#new_letter_ascii = ascii_array[new_ascii]
				#letter = new_letter_ascii.chr
				letter = new_ascii.chr
				print "#{letter}"
			end
		else
			letter = letter
			print "#{letter}"
		end

		
	end
end

puts "enter a word or phase you would like to encrypt: "
word_to_encrypt = gets.chomp
puts "enter a number: "
shift = gets.chomp

ceaser_cipher(word_to_encrypt, shift.to_i)
puts "\n"
