class Pokemon
  attr_accessor :name, :type, :id, :db
  

def initialize(id:, name:, type:, db:)
  @id = id 
  @name = name 
  @type = type 
  @db = db
end

def self.all 
  @@all
end 

def self.save(name, type, db)
  db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
end

def self.find(id, db)
  pokemon = db.execute("SELECT * FROM pokemon WHERE id= (?)", id)
  found_mon = self.new(pokemon)
  found_mon.id = pokemon
  binding.pry
end


end

Pokemon.find(1, db)


# query = <<-SQL
#       INSERT INTO tweets (username, message) VALUES (?, ?)
#     SQL
    
#     DB[:conn].execute(query, self.username, self.message)

