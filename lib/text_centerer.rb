class TextCenterer

  def initialize(text)
    @text = text
  end

  def center
    lines_of_text = @text.split("\n")
    stripped_lines_of_text = lines_of_text.map do |line|
      line.strip
    end

    longest_line = stripped_lines_of_text.sort_by { |line| line.length }.last.length

    stripped_lines_of_text.map do |line|
      line.center(longest_line).rstrip
    end.join("\n")
  end

end