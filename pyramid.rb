class Pyramid
  def make_diamond(letter)
    @letter = letter
    left_half_of_diamond
    right_half_of_diamond
  end

  def self.left_half_of_diamond
    @letters = ('A'..@letter).to_a
    @number_of_rows = @letters.count

    1.upto(@number_of_rows) do |i|
      spaces = ' ' * (@number_of_rows-i)
      first_quarter_letter = @letters[i-1]
      puts spaces + first_quarter_letter + spaces
    end
    (@number_of_rows-1).downto(1) do |i|
      spaces = ' ' * (@number_of_rows-i)
      third_quarter_letter = @letters[i-1]
      puts spaces + third_quarter_letter + spaces
    end
  end

  def self.right_half_of_diamond
    @letters = ('A'..@letter).to_a
    @number_of_rows = @letters.count

    (@number_of_rows-1).downto(2) do |i|
      spaces = ' ' * (@number_of_rows-i)
      first_quarter_letter = @letters[@number_of_rows-i]
      puts spaces + first_quarter_letter + spaces
    end
    1.upto(@number_of_rows-1) do |i|
      spaces = ' ' * (@number_of_rows-i)
      third_quarter_letter = @letters[@number_of_rows-i]
      puts spaces + third_quarter_letter + spaces
    end
  end
end
