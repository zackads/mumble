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
  end
end
