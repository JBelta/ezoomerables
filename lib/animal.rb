class Animal
  attr_reader :species,
              :name,
              :age

  def initialize(animal_info)
    @species = animal_info[:species]
    @name = animal_info[:name]
    @age = animal_info[:age]
    @is_mythical = animal_info[:is_mythical]
  end

  def is_mythical?
    @is_mythical
  end
end
