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

def self.save
  query = <<-SQL
    INSERT INTO pokemon (name, type, db) VALUES (?, ?, ?)
  SQL
  
  :db.execute(query, self.name, self.type, self.db)
  binding.pry
end



end

Pokemon.save

# query = <<-SQL
#       INSERT INTO tweets (username, message) VALUES (?, ?)
#     SQL
    
#     DB[:conn].execute(query, self.username, self.message)

