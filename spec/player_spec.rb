require './lib/player'

RSpec.describe Player do

  it 'creates an instance' do
    roy = Player.new({name: "Roy Kent", position: "Center Midfielder", salary: 1_000_000})

    expect(roy).to be_an_instance_of(Player)
  end

  it 'to have a name' do
    roy = Player.new({name: "Roy Kent", position: "Center Midfielder", salary: 1_000_000})

    expect (roy.name).to eq("Roy Kent")
  end
end
