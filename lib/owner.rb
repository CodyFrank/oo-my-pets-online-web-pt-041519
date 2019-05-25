class Owner
  @@all = []
  def self.all
    @@all << self
  end
  def self.count
    @@all.length
  end
  def self.reset_all
    @@all.clear
  end
end
