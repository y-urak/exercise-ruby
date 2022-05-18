class User
    
    @@address = "Oita"
    def self.info
        p "This is a User class!"
    end
    
    def initialize(name)
        @name = name
    end
    
    def say_hi
        p "Hi #{@name}!"
    end
    
end

User.info


