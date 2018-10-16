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

def self.save(name, type, db)
  db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
end

def self.find(id, db)
  pokemon = db.execute("SELECT * FROM pokemon WHERE id= (?)", id)
  found_mon = self.new(pokemon)
end


end


# query = <<-SQL
#       INSERT INTO tweets (username, message) VALUES (?, ?)
#     SQL
    
#     DB[:conn].execute(query, self.username, self.message)

