require_relative "vars";s=Vars::Sentence.new;require 'prime'

def pup_euler7
  x = Prime.take(10001)[-1]
end

s.solution(pup_euler7)
# puts "\n\n\tThe puppy answer is #{x[-1]}.\n\n"
#
#
#
# puts "           .--.             .---.
#           /:.  '.         .' ..  '._.---.
#          /:::-.  \\.-\"\"\"-;\` .-:::.     .::\\
#         /::'|  \`\\/  _ _  \\'   \`\\:'   ::::|
#     __.'    |   /  (o|o)  \\     \`'.   ':/
#    /    .:. /   |   ___   |        '---'
#   |    ::::'   /:  (._.) .:\\
#   \\    .='    |:'        :::|
#    \`\"\"\`       \\     .-.   ':/
#                '---\`|I|\`---'
#                      '-'"
