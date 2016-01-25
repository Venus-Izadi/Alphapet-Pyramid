class Pyramid


  def top_half_of_diamond(letter)
    letters = ('A'..letter).to_a
    spaces = (0..(letters.count - 1 )).to_a

    first_quarter = Hash[spaces.reverse.zip(letters)]
    first_quarter.each {|key, value| puts ('_' * "#{key}".to_i) + "#{value}" }

    third_quarter = Hash[spaces.zip(letters.reverse)]

    second_quarter = Hash[spaces.reverse.zip(letters)]
    fourth_quarter = Hash[spaces.reverse.zip(letters.reverse)]
  end


end
