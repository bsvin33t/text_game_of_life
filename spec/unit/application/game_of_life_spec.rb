require 'rspec'

describe GameOfLife do

  it 'accepts input and returns the next state of the universe' do
    input  = <<-eos
    0 0 0 0
    0 1 1 0
    0 1 1 0
    0 0 0 0
    eos
    output  = <<-eos
0 0 0 0
0 1 1 0
0 1 1 0
0 0 0 0
eos
    output = output.chomp

    clock_tick = 20

    game_of_life = GameOfLife.new(input, clock_tick)

    expect(game_of_life.print_universe).to eq(output)
  end
end
