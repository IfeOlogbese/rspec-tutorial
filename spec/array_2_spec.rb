RSpec.describe Array do
  subject(:sally) do
    [1, 2]
  end

  it 'should have 2 elements' do
    expect(sally.size).to eq(2)
    sally.pop
    expect(sally.size).to eq 1
  end

  it 'should have original contents' do
    expect(sally.size).to eq(2)
    expect(sally).to match_array([1, 2])
  end
end