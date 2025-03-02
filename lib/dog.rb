# Add your code here
class Dog

    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        save
    end 

    def save 
        @@all << self
    end 

    def self.all
        @@all
    end 

    def self.print_all
        @@all.each do |dog|
            puts dog.instance_variable_get(:@name)
        end 
    end

    def self.clear_all
        @@all = []
    end 
end 