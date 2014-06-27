require './lib/text_centerer'

describe TextCenterer do

  it 'centers text based on the longest line' do
    input = <<-INPUT
Hello
Nathanael
    INPUT
    expected = <<-OUTPUT
  Hello
Nathanael
    OUTPUT

    text_centerer = TextCenterer.new(input)
    expect(text_centerer.center).to eq expected
  end

  it 'In cases where there are not an even number of characters in the front and back, round down on the leading spaces' do
    input = <<-INPUT
and these are
shorts
    INPUT
    expected = <<-OUTPUT
and these are
   shorts
    OUTPUT

    text_centerer = TextCenterer.new(input)
    expect(text_centerer.center).to eq expected
  end

  it 'can handle a longer string' do
    input = <<-INPUT
this is a short line
this is a really long line that has a lot of characters
and this is
short
    INPUT
    expected = <<-OUTPUT
                 this is a short line
this is a really long line that has a lot of characters
                      and this is
                         short
    OUTPUT

    text_centerer = TextCenterer.new(input)
    expect(text_centerer.center).to eq expected
  end

end