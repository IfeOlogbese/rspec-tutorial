RSpec.describe 'comparison matchers' do
  it 'allows for comparison with built-in ruby operators' do
    expect(10).to be > 5
    expect(10).to be < 13
    expect(10).to be >= 10
    expect(10).to be <= 20
  end

  context 100 do
    it { is_expected.to be > 90 }
    it { is_expected.to be <= 100 }
  end
end
