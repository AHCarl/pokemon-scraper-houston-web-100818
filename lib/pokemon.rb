require 'pry'

class Pokemon
  attr_accessor :name, :type, :id, :db
  

def initialize(name:, type:, id:, db:)
  self.name = name
  self.type = type 
  self.id = id 
  self.db = db
end

def self.all 
  @@all
end 

def self.save(name, type, db)
  db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
end

def self.find(id, db)
  pokemon = db.execute("SELECT * FROM pokemon WHERE id= ?", id)
  found_mon = self.new(pokemon)
  found_mon.id = pokemon[0][0]
  found_mon.name = pokemon[0][1]
  found_mon.type = pokemon[0][2]
  found_mon
end

end




# query = <<-SQL
#       INSERT INTO tweets (username, message) VALUES (?, ?)
#     SQL
    
#     DB[:conn].execute(query, self.username, self.message)

