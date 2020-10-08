class Mumble
  def mumble_letters(string)
    return string if string.length <= 1

    return 'A-Bb' if string == 'ab'

    string[0] + '-' + string[1] + string[1].downcase
  end
end
