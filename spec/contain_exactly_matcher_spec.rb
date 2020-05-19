RSpec.describe 'contain_exactly matcher' do
  subject { [1, 2, 3] }

  describe 'long form syntax' do
    it 'should check for the presence of all elements' do
      expect(subject).to contain_exactly(1, 3, 2)
      expect(subject).to contain_exactly(2, 1, 3)
      expect(subject).to contain_exactly(1, 2, 3)
      
      # Not to
      expect(subject).not_to contain_exactly(2, 4, 5)

      # Fail examples
      # expect(subject).to contain_exactly(1, 2, 3, 4)
      # expect(subject).to contain_exactly(1, 2, 2)
    end
  end

  it { is_expected.to contain_exactly(1, 2, 3) }
end
