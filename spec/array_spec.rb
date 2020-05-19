RSpec.describe Array do
  it 'should be empty' do
    expect(subject.size).to eq 0
    subject << 1
    expect(subject.size).to eq 1
  end
end

# Returns an empty array instance

# To reduce bolierplate code as RSpec can create an instance of the class and provide some useful helper methods
