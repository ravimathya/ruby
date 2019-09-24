def generate_code(number)
    charset = Array('A'..'Z') + Array('a'..'z') + Array(0..9)
    Array.new(number) { charset.sample }.join
end

def check_val(url)
    File.open("Unique.txt", "r").each do |line|
        $c = -1
		b = line.split[0]
		if b == url
			$c = b[1]
		end
    end
    return $c
end

def loop(url)
  if check_val(url) != 1
    puts "#{check_val(url)}"
  else
    file = File.open("Unique.txt", "a")
    file.puts "#{url}" + " " + "#{generate_code(8)}"
    file.close
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