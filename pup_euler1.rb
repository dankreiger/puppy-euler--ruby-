def pup_euler1
a=*(1...1000)

y = a.delete_if{ |x| x % 5 !=0 && x % 3 != 0 }

  total = 0
  i = 0
   while i < 466
    y.each{ |puppy| total = total + puppy }
    return total
    
   i += 1
   end
   
end

puts "\t\nThe puppy answer is: #{pup_euler1}.\n\n"




puts "           .--.             .---.
          /:.  '.         .' ..  '._.---.
         /:::-.  \\.-\"\"\"-;\` .-:::.     .::\\
        /::'|  \`\\/  _ _  \\'   \`\\:'   ::::|
    __.'    |   /  (o|o)  \\     \`'.   ':/
   /    .:. /   |   ___   |        '---'
  |    ::::'   /:  (._.) .:\\
  \\    .='    |:'        :::|
   \`\"\"\`       \\     .-.   ':/
               '---\`|I|\`---'
                     '-'"