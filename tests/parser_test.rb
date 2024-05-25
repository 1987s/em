require_relative '../source/lexer'
require_relative '../source/parser'

# source = '1 + 2 * 3 - 4 / 2'
source = File.read('examples/04.em').to_s

lexer = Lexer.new source
tokens = lexer.make_tokens

parser = Parser.new tokens
statements = parser.parse

puts "\n\nSTATEMENTS:\n\n"
statements.each do |stmt|
   puts '- ' + stmt.to_s
   puts
end
