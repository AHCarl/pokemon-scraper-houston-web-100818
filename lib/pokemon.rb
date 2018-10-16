class Pokemon
  attr_accessor :name, :type, :id, :db
  
  @@all = []

def initialize(id:, name:, type:, db:)
  self.id = id 
  self.name = name 
  self.type = type 
  self.db = db
  self.class.all << self
end

def self.all 
  @@all
end 

def self.save(name:, type:, db:)
  
end



end


