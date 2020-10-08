require('mumble')

describe Mumble do
  describe '.mumble_letters' do
    context 'given an empty string' do
      it 'returns an empty string' do
        expect(Mumble.new.mumble_letters('')).to eq ''
      end
    end

    context 'given a single upper case character string' do
      it 'returns the given string' do
        expect(Mumble.new.mumble_letters('A')).to eq 'A'
      end
    end

    context 'given another uppercase character string' do
      it 'returns the given string' do
        expect(Mumble.new.mumble_letters('B')).to eq 'B'
      end
    end

    context 'given a string of two upper case characters' do
      it 'returns the string mumbled' do
        expect(Mumble.new.mumble_letters('AB')).to eq 'A-Bb'
        expect(Mumble.new.mumble_letters('BC')).to eq 'B-Cc'
        expect(Mumble.new.mumble_letters('CD')).to eq 'C-Dd'
      end
    end

    context 'given a string of two lower case characters' do
      it 'returns the string mumbled' do
        expect(Mumble.new.mumble_letters('ab')).to eq 'A-Bb'
      end

      it 'returns the string mumbled' do
        expect(Mumble.new.mumble_letters('bc')).to eq 'B-Cc'
      end
    end
  end
end
