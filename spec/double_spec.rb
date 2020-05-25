RSpec.describe 'A random double' do
  it 'only allows defined methods to be invoked' do
    # stuntman = double('Mr. Danger', fall_off_ladder: 'Ouch', light_on_fire: true)
    # expect(stuntman.fall_off_ladder).to eq 'Ouch'
    # expect(stuntman.light_on_fire).to eq true

    # stuntman = double('Mr. Danger')
    # allow(stuntman).to receive(:fall_off_ladder).and_return('Ouch')
    # expect(stuntman.fall_off_ladder).to eq 'Ouch'

    stuntman = double('Mr. Danger')
    allow(stuntman).to receive_messages(fall_off_ladder: 'Ouch', light_on_fire: true)
    expect(stuntman.fall_off_ladder).to eq 'Ouch'
    expect(stuntman.light_on_fire).to eq true
  end
end

# db = double('Database Connection', connect: true, disconnect: 'Goodbye')
# expect(db.connect).to eq true
# expect(db.disconnect).to eq 'Goodbye'

# fs = double('File System')
# allow(fs).to receive_messages(read: 'Romeo and Juliet', write: false)