require_relative '../lib/quote.rb'

describe Quote do
  describe '#select_random' do
    let(:random) { Quote.new }
    let(:request_random) { random.select_random }

    it 'Should return an Hash' do
      expect(request_random.class).to eql Hash
    end

    it 'Should return a key and value' do
      expect(request_random.length).to eql(4)
    end
  end
end
