RSpec.describe 'be matchers' do
  # Anything that's not false or nil
  it 'can test for truthiness' do
    expect(true).to be_truthy
    expect('Hello').to be_truthy
    expect(0).to be_truthy
    expect(1).to be_truthy
  end

  it 'can test for falsiness' do
    expect(false).to be_falsy
    expect(nil).to be_falsy
  end

  it 'can test for nil' do
    expect(nil).to be_nil

    my_hash = { a: 5 }
    expect(my_hash[:b]).to be_nil
  end
end

# expect({}).to be_empty
# expect([10, 20, 30]).to all(be_even)
# expect(0, 1, 2]).to all(be >= 0)

# truthy = ['hello', 0, -10, [], 99.9, :hello, true, [1, 2, 3]]
# falsy = [false, nil]