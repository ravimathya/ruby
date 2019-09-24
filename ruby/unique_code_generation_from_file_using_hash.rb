def generate_code(number)
    charset = Array('A'..'Z') + Array('a'..'z') + Array(0..9)
    Array.new(number) { charset.sample }.join
end

# def check_val(url)
# 	File.open("Unique.txt", "r").each do |line|
# 		b = line.split[0]
# 		if b == url
# 			return b[1]
# 		else
# 			b = 1
# 		end
# 	end
# end

def loop(url)
	file = File.open("Unique.txt", "w+").each do |line|
		b = line.split[0]
		if b == url
			puts "Unique code is #{b[1]}."
			line.close
			puts "press 1 to continue... or press enter to exit"
			option = gets.chomp.to_i
			if option == 1
				puts "Enter your url: "
				url = gets.chomp
				puts loop(url)
			end
		else
			file = File.open("Unique.txt", "a")
			file.puts "#{url}" + " " + "#{generate_code(8)}"
			file.close
			puts "press 1 to continue... or press enter to exit"
			option = gets.chomp.to_i
			if option == 1
				puts "Enter your url: "
				url = gets.chomp
				puts loop(url)
			end
		end
	end   
end

print "Enter your url: "
url = gets.chomp
puts loop(url)
# File.open("Unique.txt", "r").each do |line|
#     # file.each { |line| puts line.length }
#     puts line
#     b = line.split
#     puts b[1]
# end