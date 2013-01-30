names = "Adi Adrian Alex Anthony Ben Brian Bryan Chloe Eric Jane Jeff Jillian Joe Luke Matt Nick Nicky Ralph Ron Ryan Sandip Sean Shefali Simon Stephen".split(' ').shuffle

puts `clear`
print "Number of people per group: "
size = gets.to_i

if size < 1
  print "Invalid number. Number of people per group: "
  size = gets.to_i
elsif size > 25
  print "We don't have #{size} people in the class. Number of people per group: "
  size = gets.to_i
end

puts ' '

group_numb = 0

while names.length > 0
  a = names.take(size).to_a
    if a.length == size
      group_numb = group_numb + 1
      puts "Group #{group_numb}:"
      puts a
      names = names - a
      if names.length >= size
        puts ' '
      else
        nil
      end

    else
      puts a
      names = names - a
      puts ' '
    end
end





