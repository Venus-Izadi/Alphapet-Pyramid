class Pyramid

  def draw_diamond(letter)
    letters = ('A'..letter).to_a
    spaces = (0..(letters.count - 1 )).to_a

    first_quarter = Hash[spaces.reverse.zip(letters)]
    draw(first_quarter)

    third_quarter = Hash[spaces.zip(letters.reverse)]
    draw(third_quarter)

    second_quarter = Hash[spaces.zip(letters)]
    draw(second_quarter)

    fourth_quarter = Hash[spaces.reverse.zip(letters.reverse)]
    draw(fourth_quarter)
  end

  private

  def draw(first_quarter)
    first_quarter.each { |key, value| puts ('_' * "#{key}".to_i) + "#{value}" }
  end
end
