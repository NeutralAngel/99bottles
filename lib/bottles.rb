class Bottles

  def verse(number)
    "#{first(number)}\n#{second(number)}\n"
  end

  def verses(from, to)
    output = ''
    from.downto(to) do |n|
      output += verse(n)
      output += "\n" unless n == to
    end
    output
  end

  def song
    verses(99, 0)
  end

  def bottles(number)
    return "no more bottles" if number == 0;
    "#{number} bottle" + (number > 1 ? 's' : '')
  end

  def how_many(number)
    number > 1 ? "one" : "it"
  end

  def first(number)
    "#{bottles(number).capitalize} of beer on the wall, #{bottles(number)} of beer."
  end

  def second(number)
    if (number > 0)
      "Take #{how_many(number)} down and pass it around, #{bottles(number - 1)} of beer on the wall."
    else
      "Go to the store and buy some more, 99 bottles of beer on the wall."
    end
  end

end