RSpec.shared_context 'common' do
  before do
    @food = []
  end

  def some_helper_method
    5
  end

  let(:some_variable) { [1, 2, 3] }
end

RSpec.describe 'first example group' do
  include_context 'common'

  it 'can use outside instance variables' do
    expect(@food.length).to eq 0
  end
end

# subject will be an instance of the described class

# subject { described_class.new }

# It is the class that's defined on the rspec describe method, it helps to reduce class duplication and to keep code dry so that if the class name gets renamed or changed, it's only done in one place

# RSpec.describe Array do
#   subject { [1, 2] }

#   it 'should equal [1, 2]'do
#     expect(subject).to eq [1,2]
#   end
#   it { is_expected.to eq([1, 2]) }
# end

# Prefer one liner

# Include context can't include rspec examples and assert avlues while include examples can include examples and assert values