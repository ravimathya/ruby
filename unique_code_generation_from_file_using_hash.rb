$a = {}
File.open("Unique.txt", "r+").each do |line|

    # file.each { |line| puts line.length }
    $b = line.split
    $a[$b[0]] = $b[1]
end

def generate_code(number)
    charset = Array('A'..'Z') + Array('a'..'z') + Array(0..9)
    Array.new(number) { charset.sample }.join
end

def loop(url)
    if $a.include?(url) then
		code = $a[url]
		puts "Unique code is #{code}."
		puts "press 1 to continue... or press enter to exit"
		option = gets.chomp.to_i
		if option == 1
			puts "Enter your url: "
			url = gets.chomp
			puts loop(url)
		end
	else
		$a["#{url}"] = "#{generate_code(8)}"
		puts "Unique code is " + $a["#{url}"]
		puts "press 1 to continue... or press enter to exit"
		option = gets.chomp.to_i
		if option == 1
			puts "Enter your url: "
			url = gets.chomp
			puts loop(url)
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