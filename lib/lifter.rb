class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def all_lifters
    self.all.map { |lifter| lifter.name}
  end

  def lifter_memberships
    Membership.all.select { |membership| membership.lifter == self}
  end

  def lifter_memberships_gyms
    self.lifter_memberships.map { |membership| membership.gym.name}
  end

  def self.avg_total
    Lifter.all.map { |lifter| lifter.lift_total}.sum / Lifter.all.length
  end

  def total_cost
    self.lifter_memberships.map { |membership| membership.cost}.sum
  end
end
