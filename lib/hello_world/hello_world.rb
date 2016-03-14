require_relative "greeting"

greeting = Greeting.new

loop do
  puts "Hi, who would you like me to greet?"
  answer = gets.chomp
  puts greeting.message(answer)
end
