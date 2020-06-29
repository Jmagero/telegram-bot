require_relative '..lib/quote.rb'

Rspec.describe Quote do
  describe 'make_request' do
    let(:request) { Quote.new }
    let(:request_json) { request.make_request }

    it 'Should return json response when the request is successful' do
      expect(request_json.class).to eql(Array)
    end
  end

  describe '#select_random' do
    let(:random) { Quote.new }
    let(:request_random) { random.select_random }

    it 'Should return an Hash' do
      expect(request_random.class).to eql Hash
    end

    it 'Should return a key and value' do
      expect(request_random.length).to eql(2)
    end
  end
end
