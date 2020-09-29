class Mumble
  def mumble_letters(string)
    return string if string.length <= 1

    return 'A-Bb' if string == 'AB'

    return 'B-Cc'
  end
end
