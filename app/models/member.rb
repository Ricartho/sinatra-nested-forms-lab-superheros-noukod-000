class Member 
  attr_accessor :name,:power,:bio
  @@all = [] 
  
  def initialize(args)
    @name = args[:name]
    @power = args[:power]
    @bio = args[:bio] 
    @all.push(self)
  end 
  
  def self.all 
    @@all
  end 
end 