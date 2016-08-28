class Bottles
  def song
    verses(99, 0)
  end

  def verses(first_index, last_index)
    (last_index..first_index).to_a.reverse.map {|n|
      verse(n)
    }.join("\n")
  end

  def verse(n)
    if n == 0
      "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
    else
      line_one = "#{format_plural(n)} of beer on the wall, #{format_plural(n)} of beer."
      line_two = if n > 1
        "Take one down and pass it around, #{format_plural(n-1)} of beer on the wall."
      else
        "Take it down and pass it around, no more bottles of beer on the wall."
      end
      "#{line_one}\n#{line_two}\n"
    end
  end

  private

  def format_plural(n)
    if n == 1
      "#{n} bottle"
    else
      "#{n} bottles"
    end
  end
end
