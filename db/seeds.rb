Message.destroy.all

(1..10).to_a.each do |num|
  content = "Message #{num}"
  message.create content: content
end

puts "Message Count: #{Message.count}"
