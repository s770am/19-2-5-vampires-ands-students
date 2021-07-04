class People

    def initialize(name)
    @name = name
    end
    def greeting
    puts "hi my name is #{@name}"
    end
    
    end

class Student < People
def learn 
puts "i get it"
end
end

class Instructor < People
def teach
    puts "Everything in Ruby is an Object"
end
end

