class TextCenterer

  def initialize(text)
    @lines = text.split("\n")
  end

  def center
    max_length = find_longest_line_length
    centered_lines = ""
    @lines.each do |line|
      if line.length - max_length == 0
        centered_lines << "#{line}\n"
      else
        spaces = " " * ((max_length - line.length) / 2)
        centered_lines << "#{spaces}#{line}\n"
      end
    end
    centered_lines
  end

  private

  def find_longest_line_length
    lines = []
    @lines.each do |line|
      lines << line.length
    end
    lines.sort.last
  end

end