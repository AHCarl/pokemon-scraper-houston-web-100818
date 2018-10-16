require 'pry'

class Pokemon
  attr_accessor :name, :type, :id, :db
  

def initialize(args)
  # @id = id 
  # @name = name 
  # @type = type 
  # @db = db
end

def self.all 
  @@all
end 

def self.save(name, type, db)
  db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
end

def self.find(num, db)
  pokemon = db.execute("SELECT * FROM pokemon WHERE id= ?", [num])
  found_mon = self.new(pokemon)
  found_mon.id = pokemon[0]
  found_mon.name = pokemon[1]
  found_mon.type = pokemon[2]
  found_mon.db = pokemon[3]
  found_mon
end

end


# query = <<-SQL
#       INSERT INTO tweets (username, message) VALUES (?, ?)
#     SQL
    
#     DB[:conn].execute(query, self.username, self.message)

