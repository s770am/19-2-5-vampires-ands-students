class Vampire
@@coven = []

    def initialize(name, age)
        @name = name
        @age = age
        @in_coffin = true
        @drank_blood_today = true
    end

    attr_accessor :in_coffin, :drank_blood_today, :name

def self.create(name, age)
@@coven << vampire = Vampire.new(name,age)
vampire
end

def drink_blood
    @drank_blood_today = true
end

def go_home
in_coffin = true
end

def self.sunset
puts "the night has begun beware!!!"
@@coven.each do |vampire|
vampire.in_coffin = false
vampire.drank_blood_today = false
end
end

def self.sunrise
puts "the sun has risen you are safe again"
@@coven.each do |vampire|
if vampire.in_coffin == false || vampire.drank_blood_today == false
    vampire.die
end
end
end

def self.display 
@@coven.each do |vampire|
puts vampire.name
end
end


def die
    puts "#{self.name} has died"
@@coven.delete(self)
end


end

bob = Vampire.create("bob", 35)
henretta = Vampire.create("henretta", 95)
valideus = Vampire.create("valideus", 356)
Vampire.display
Vampire.sunset
 henretta
 bob.drink_blood
 bob.go_home
 henretta.drink_blood
 valideus.go_home
 Vampire.sunrise
 Vampire.display
