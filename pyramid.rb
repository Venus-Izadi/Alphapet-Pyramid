class Pyramid

  def initialize(letter)
   @letters = ('A'..letter).to_a
   @spaces = (0..(@letters.count - 1 )).to_a
  end

  def draw_diamond
    first_quarter = Hash[@spaces.reverse.zip(@letters)]
    second_quarter = Hash[@spaces.zip(@letters)]
    draw(first_quarter, second_quarter)

    third_quarter = Hash[@spaces.zip(@letters.reverse)]
    fourth_quarter = Hash[@spaces.reverse.zip(@letters.reverse)]
    draw(third_quarter, fourth_quarter)
  end

  private

  def draw(quarter_one, quarter_two)
    0.upto(@letters.count - 1) do |i|
      make_line(i, quarter_one)
      make_line(i, quarter_two)
      puts
    end
  end

  def make_line(i, quarter_one)
    spaces = quarter_one.keys[i]
    letter = quarter_one.values[i]
    print (' ' * spaces) + letter + ' ' * (@letters.count - spaces -1)
  end
end
