# File.open("ravi.txt", "r") {|file| puts file.read}


a = {}
File.open("ravi.txt", "r").each do |line|
    # file.each { |line| puts line.length }
    # puts line
    # $b = line.split
    # puts $b[0]
    # puts line
    c = line.split
    a[c[0]] = c[1]
end
puts a