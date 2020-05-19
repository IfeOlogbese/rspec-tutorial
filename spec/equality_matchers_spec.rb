RSpec.describe 'equality matchers' do
  let(:a) { 3.0 }
  let(:b) { 3 }

  context 'eq matcher' do
    it 'tests for value and ignores type' do
      expect(a).to eq b
    end
  end

  context 'eql matcher' do
    it 'tests for the value including same type' do
      expect(a).not_to eql(b)
      expect(b).not_to eql(a)
    end
  end

  context 'equal and be matcher' do
    let(:c) { [1, 2, 3] }
    let(:d) { [1, 2, 3] }
    let(:e) { c }

    it 'cares about object identity' do
      expect(c).to eq(d)
      expect(c).to eql(d)
      expect(c).to be(e)
      expect(c).to equal(e)
      expect(c).not_to equal(d)
    end
  end
end