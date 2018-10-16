class Pokemon
  attr_accessor :name, :type, :id, :db

def initialize(id:, name:, type:, db:)
  self.id = id 
  self.name = name 
  self.type = type 
  self.db = db
end

end


