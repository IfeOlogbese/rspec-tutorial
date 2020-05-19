RSpec.describe 'include matcher' do
  describe 'hot chocolate' do
    it 'checks for substring inclusion' do
      expect(subject).to include('hot')
      expect(subject).to include('choc')
      expect(subject).to include('late')
    end

    it { is_expected.to include('choc') }
  end

  describe [10, 20, 30] do
    it 'checks for inclusion in the array, regardless of the order' do
      expect(subject).to include(10)
      expect(subject).to include(30, 10)
      expect(subject).to include(20, 30)
    end
  end

  describe ({ a: 2, b: 4 }) do
    it 'can check for a key existence' do
      expect(subject).to include(:a)
      expect(subject).to include(:a, :b)
      expect(subject).to include(:b)
    end

    it 'can check for a key value pair' do
      expect(subject).to include(a: 2)
    end

    it { is_expected.to include(a: 2) }
    it { is_expected.to include(:b) }
  end

  describe [{ a: 2, b: 4 }, { c: 5, d: 6 }] do
    it 'can perform nested includes and check for an hash in an array' do
      expect(subject).to include(include(:a))
      expect(subject).to include(include(c: 5))
    end

    it { is_expected.to include(include(:a)) }
  end
end
