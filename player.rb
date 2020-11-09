class Player
  #player with a name and lives
  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end
end