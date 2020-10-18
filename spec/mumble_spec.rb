require('mumble')

describe Mumble do
  describe '.mumble_letters' do
    expectations = [
      { input: '', expected_output: '' },
      { input: 'A', expected_output: 'A' },
      { input: 'B', expected_output: 'B' },
      { input: 'AB', expected_output: 'A-Bb' },
      { input: 'BC', expected_output: 'B-Cc' },
      { input: 'CD', expected_output: 'C-Dd' },
      { input: 'ab', expected_output: 'A-Bb' },
      { input: 'bc', expected_output: 'B-Cc' }
    ]

    expectations.each do |test_case|
      context "given #{test_case[:input]}" do
        it "expect #{test_case[:expected_output]}" do
          # Arrange
          mumbler = Mumble.new

          # Act
          output = mumbler.mumble_letters(test_case[:input])

          # Assert
          expect(output).to eq test_case[:expected_output]
        end
      end
    end
  end
end
