require 'rspec'

describe TextViewer do
  describe 'view and to_s' do
    it 'accepts living cells locations and the dimensions to be able to print the universe on text' do
      dimensions = [4, 4]
      locations = [[1, 1], [1, 2], [2, 1], [2, 2]]
      output  = <<-eos
0 0 0 0
0 1 1 0
0 1 1 0
0 0 0 0
eos
      output = output.chomp

      text_viewer = TextViewer.new
      text_viewer.view(locations, dimensions)

      expect(text_viewer.to_s).to eq(output)

    end
  end
end
