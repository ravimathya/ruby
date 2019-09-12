$code_hash = {}
file = File.open("Unique.txt", "a")

def generate_code(number)
	charset = Array('A'..'Z') + Array('a'..'z') + Array(0..9)
	Array.new(number) { charset.sample }.join
end

def loop(url)
	if File.readlines("Unique.txt").grep("#{url}").any? then
		$code_hash = $code_hash = {}
file = File.open("Unique.txt", "a")

def generate_code(number)
	charset = Array('A'..'Z') + Array('a'..'z') + Array(0..9)
	Array.new(number) { charset.sample }.join
end

def loop(url)
	if File.readlines("Unique.txt").grep("#{url}").any? then
		$code_hash = File.open("Unique.txt", "r") {|file| puts file.read}
		code = $code_hash[url]
		puts "Unique code is #{code}."
		puts "press 1 to continue... or press enter to exit"
		option = gets.chomp.to_i
		if option == 1
			puts "Enter your url: "
			url = gets.chomp
			puts loop(url)
		end
	else
		$code_hash["#{url}"] = "#{generate_code(8)}"
		puts "Unique code is " + $code_hash["#{url}"]
		File.open("Unique.txt", "a") { |file| file.puts "#{$code_hash}" }
		puts "press 1 to continue... or press enter to exit"
		option = gets.chomp.to_i
		if option == 1
			puts "Enter your url: "
			url = gets.chomp
			puts loop(url)
		end
	end   
end
file.close
puts "Enter your url: "
url = gets.chomp
puts loop(url)
File.open("Unique.txt", "r") {|file| puts file.read}
		code = $code_hash[url]
		puts "Unique code is #{code}."
		puts "press 1 to continue... or press enter to exit"
		option = gets.chomp.to_i
		if option == 1
			puts "Enter your url: "
			url = gets.chomp
			puts loop(url)
		end
	else
		$code_hash["#{url}"] = "#{generate_code(8)}"
		puts "Unique code is " + $code_hash["#{url}"]
		File.open("Unique.txt", "a") { |file| file.puts "#{$code_hash}" }
		puts "press 1 to continue... or press enter to exit"
		option = gets.chomp.to_i
		if option == 1
			puts "Enter your url: "
			url = gets.chomp
			puts loop(url)
		end
	end   
end
file.close
puts "Enter your url: "
url = gets.chomp
puts loop(url)
