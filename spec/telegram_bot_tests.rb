Rspec.describe Quote do
  describe 'make_request' do
    let(:request) {Quote.new}
    let(:request_json) {request.make_request}

    it 'Should return json response when the request is successful' do
      expect(request_json.class).to eql(Array)
    end
  end

end