class Pyramid

  def self.first_quarter_of_diamond(letter)
    letters = ('A'..letter).to_a
    number_of_rows = letters.count
    1.upto(number_of_rows) do |i|
      spaces = ' ' * (number_of_rows-i)
      letter = letters[i-1]
      puts spaces + letter + spaces
    end
  end

  def self.second_quarter_of_diamond(letter)
    letters = ('A'..letter).to_a
    number_of_rows = letters.count
    number_of_rows.downto(1) do |i|
      spaces = ' ' * (number_of_rows-i)
      letter = letters[number_of_rows-i]
      puts spaces + letter + spaces
    end
  end
end
