code_hash = { "www.facebook.com" => 8, "www.google.com" => 19, "Vinh" => 24, "Alberto" => 3, "Rina" => 25 }
url = ""
code = 0
def generate_code(number)
      charset = Array('A'..'Z') + Array('a'..'z') + Array(0..9)
      Array.new(number) { charset.sample }.join
end

print "Enter a url: "
url = gets.chomp
if code_hash.include?(url) then
   code = code_hash[url]
   puts "unique code is #{code}."
else
   code_hash["#{url}"] = "#{generate_code(8)}"
   puts code_hash["#{url}"]
end