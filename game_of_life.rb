Dir[File.join("#{File.expand_path(File.dirname(__FILE__))}", "lib", "**/*.rb")].map { |f| require f }
Dir[File.join("#{File.expand_path(File.dirname(__FILE__))}", "application", "**/*.rb")].map { |f| require f }

raw_input = File.read(ARGV[0])
game_of_life = GameOfLife.new(raw_input, 50)

game_of_life.start

puts game_of_life.print_universe
