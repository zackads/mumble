require('mumble')

describe Mumble do
  describe '.mumble_letters' do
    context 'given an empty string' do
      it 'returns an empty string' do
        expect(Mumble.new.mumble_letters('')).to eq ''
      end
    end
  end
end
