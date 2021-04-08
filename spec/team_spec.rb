require './lib/player'
require './lib/team'

RSpec.describe Team do

  it 'creates an instance' do
      roy = Player.new({name: "Roy Kent", position: "Center Midfielder" , salary: 1_000_000})
      sam = Player.new({name: "Sam Obisanya", position: "Right-back Defender", salary: 600_000})
      richmond = Team.new("AFC Richmond", "Ted Lasso", [roy, sam])
    expect(richmond).to be_an_instance_of(Team)
  end

  it 'to have a attributes' do
    roy = Player.new({name: "Roy Kent", position: "Center Midfielder" , salary: 1_000_000})
    sam = Player.new({name: "Sam Obisanya", position: "Right-back Defender", salary: 600_000})
    richmond = Team.new("AFC Richmond", "Ted Lasso", [roy, sam])
    expect(richmond.name).to eq("AFC Richmond")
    expect(richmond.coach).to eq("Ted Lasso")
    expect(richmond.players).to eq([roy, sam])
  end

  it 'describes instance methods' do
    roy = Player.new({name: "Roy Kent", position: "Center Midfielder" , salary: 1_000_000})
    sam = Player.new({name: "Sam Obisanya", position: "Right-back Defender", salary: 600_000})
    richmond = Team.new("AFC Richmond", "Ted Lasso", [roy, sam])
    expect(richmond.total_salary).to eq(1600000)
    expect(richmond.captain).to eq("Roy Kent")
    expect(richmond.positions_filled).to eq(["Center Midfielder", "Right-back Defender"])
  end
end
