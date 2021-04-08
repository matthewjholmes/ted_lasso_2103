class Team
attr_reader :name, :coach, :players

  def initialize(name, coach, players)
    @name = name
    @coach = coach
    @players = players
  end

  def total_salary
    # total = 0
    # @players.each do |player|
    #   total += player.salary
    # end
    # total

    @players.reduce(0) do |total, player|
      total += player.salary
      total
    end
  end

  def captain
    player = @players.max_by do |player|
      player.salary
    end
      player.name
  end

  def positions_filled
    @players.map do |player|
      player.position
    end 
  end
end
