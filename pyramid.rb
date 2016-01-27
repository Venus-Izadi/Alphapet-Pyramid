class Pyramid

  def initialize(letter)
   @letter = letter
  end

  def draw_diamond
    @letters = ('A'..@letter).to_a
    spaces = (0..(@letters.count - 1 )).to_a

    first_quarter = Hash[spaces.reverse.zip(@letters)]
    second_quarter = Hash[spaces.zip(@letters)]
    make_line(first_quarter, second_quarter)

    third_quarter = Hash[spaces.zip(@letters.reverse)]
    fourth_quarter = Hash[spaces.reverse.zip(@letters.reverse)]
    make_line(third_quarter, fourth_quarter)
  end

  private

  def draw(space, letter)
     print ' ' * space + letter + ' ' * (@letters.count - space -1)
  end

  def make_line(hash1, hash2)
    0.upto(@letters.count - 1) do |i|
      spaces = hash1.keys[i]
      letter = hash1.values[i]
      draw(spaces,letter)
      current_spaces = hash2.keys[i]
      current_letter = hash2.values[i]
      draw(current_spaces,current_letter)
      puts
    end
  end

end
