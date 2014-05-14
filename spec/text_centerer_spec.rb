require './lib/text_centerer'

describe TextCenterer do

  let(:test_text) {File.read('./spec/support/test.txt')}
  let(:test_text2) {File.read('./spec/support/test2.txt')}

  it 'can center text, if there is extra space in front of a line, it is ignored' do
    text_centerer = TextCenterer.new(test_text)
    expect(text_centerer.center).to eq "Hello my name is\n      Nate"
  end

  it 'can handle if the buffer is not evenly divisible by 2' do
    text_centerer = TextCenterer.new(test_text2)
    expect(text_centerer.center).to eq "Hello my name is\n   Nathanael"
  end

end