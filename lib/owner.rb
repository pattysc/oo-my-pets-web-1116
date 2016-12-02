class Owner
  attr_accessor :pets, :name
  attr_reader :species


  @@all = []

   def initialize(pets)
     @pets = {:fishes => [], :dogs=>[], :cats=>[]}
     @@all << self
     @species = "human"
   end

   def buy_cat(name)
     new_cat = Cat.new(name)
     pets[:cats] << new_cat
   end

   def buy_fish(name)
     new_fish = Fish.new(name)
     pets[:fishes] << new_fish
   end

   def buy_dog(name)
     new_dog = Dog.new(name)
     pets[:dogs] << new_dog
   end

   def walk_dogs
     pets[:dogs].each do |dog|
       dog.mood = "happy"
     end
   end

   def play_with_cats
     pets[:cats].each do |cat|
       cat.mood = "happy"
     end
   end

   def feed_fish
     pets[:fishes].each do |fish|
       fish.mood = "happy"
     end
   end

   def sell_pets
     pets.each do |type, instances|
       instances.each do |pet|
         pet.mood = "nervous"
       end
     end
     @pets = {:fishes => [], :dogs=>[], :cats=>[]}
   end

   def list_pets
     "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
   end

   def say_species
     "I am a human."
   end

   def self.all
     @@all
   end

   def self.reset_all
     @@all.clear
   end

   def self.count
     @@all.length
   end
end
