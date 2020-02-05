class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def gym_names
    self.all.map { |gym| gym.name}
  end

  def gym_members

  end
end
