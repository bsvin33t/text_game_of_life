class Parser
  def initialize(input)
    @input = input
    @locations = nil
    @dimensions = nil
  end

  def locations
    parse_and_tokenize unless @locations
    @locations
  end

  def dimensions
    parse_and_tokenize unless @dimensions
    @dimensions
  end

  private

  def parse_and_tokenize
    @input = @input.split("\n").map {|cell_row| cell_row.split(' ')}
    @dimensions = [@input.size, @input[0].size ]
    @input = @input.map.with_index do |outer_array, outer_array_index|
      outer_array.map.with_index do |inner_array, inner_array_index|
        inner_array.to_i <= 0 ? nil : [outer_array_index, inner_array_index]
      end
    end
    @locations = @input.flatten.compact.each_slice(2).to_a
  end
end
