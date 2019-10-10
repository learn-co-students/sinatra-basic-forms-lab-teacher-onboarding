class Puppy
  attr_accessor :name, :breed, :months_old

  @@all = []

  def self.all
    @@all
  end

  def initialize(puppy_hash)
    @name = puppy_hash[:name]
    @breed = puppy_hash[:breed]
    @months_old = puppy_hash[:months_old]
    @@all << self
  end
  
end
