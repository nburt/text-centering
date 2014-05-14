class TextCenterer

  def initialize(text)
    @text = text
  end

  def center
    lines_of_text = @text.split("\n")
    stripped_lines_of_text = []
    lines_of_text.each do |line|
      stripped_line = line.strip
      stripped_lines_of_text << stripped_line
    end

    longest_line = stripped_lines_of_text.sort[0].length

    centered_text = ""
    buffer = 0
    stripped_lines_of_text.each do |line|
      if line.length < longest_line
        if (longest_line - line.length).even?
          buffer = (longest_line - line.length) / 2
        else
          buffer = (longest_line - line.length) / 2
        end
      end
      centered_text << "#{' ' * buffer }#{line}\n"
    end
    centered_text.chop
  end

end