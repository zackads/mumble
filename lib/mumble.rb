class Mumble
  def mumble_letters(string)
    return string if string.length <= 1

    string[0].upcase + '-' + string[1].upcase + string[1].downcase
  end
end
