require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/animal'
require './lib/zoo'

class ZooTest < Minitest::Test
  def setup
    @zoo = Zoo.new("Smithsonian's National Zoo")
    @animal1 = Animal.new({species: 'Elephant', name: 'Ellie', age: 32, is_mythical: false})
    @animal2 = Animal.new({species: 'Alpaca', name: 'Abbott', age: 5, is_mythical: false})
    @animal3 = Animal.new({species: 'Alpaca', name: 'Costello', age: 5, is_mythical: false})
    @animal4 = Animal.new({species: 'Unicorn', name: 'Frank', age: 412, is_mythical: true})
    @animal5 = Animal.new({species: 'Penguin', name: 'Gwyn', age: 9, is_mythical: false})
    @animal6 = Animal.new({species: 'Penguin', name: 'Penny', age: 2, is_mythical: false})
    @animal7 = Animal.new({species: 'Giraffe', name: 'Jerry', age: 13, is_mythical: false})
    @animal8 = Animal.new({species: 'Panda', name: 'Amanda', age: 10, is_mythical: false})
    @animal9 = Animal.new({species: 'Manticore', name: 'Cory', age: 23, is_mythical: true})
    @animal10 = Animal.new({species: 'Tortoise', name: 'Sarah', age: 127, is_mythical: true})
  end

  def add_all_animals
    @zoo.add_animal(@animal1)
    @zoo.add_animal(@animal2)
    @zoo.add_animal(@animal3)
    @zoo.add_animal(@animal4)
    @zoo.add_animal(@animal5)
    @zoo.add_animal(@animal6)
    @zoo.add_animal(@animal7)
    @zoo.add_animal(@animal8)
    @zoo.add_animal(@animal9)
    @zoo.add_animal(@animal10)
  end

  def test_it_exists
    assert_instance_of Zoo, @zoo
  end

  def test_it_has_attributes
    assert_equal "Smithsonian's National Zoo", @zoo.name
    assert_equal [], @zoo.animals
  end

  def test_it_can_add_animals
    @zoo.add_animal(@animal1)
    @zoo.add_animal(@animal2)
    @zoo.add_animal(@animal3)

    assert_equal [@animal1, @animal2, @animal3], @zoo.animals
  end

  def test_it_can_get_count_of_animals_under_10
    skip
    add_all_animals

    assert_equal 4, @zoo.num_young_animals
  end

  def test_it_can_get_all_animals_over_50
    skip
    add_all_animals

    assert_equal [@animal4, @animal10], @zoo.old_animals
  end

  def test_it_can_get_animal_names
    skip
    add_all_animals

    expected = [
      'Ellie',
      'Abbott',
      'Costello',
      'Frank',
      'Gwyn',
      'Penny',
      'Jerry',
      'Amanda',
      'Cory',
      'Sarah'
    ]

    assert_equal expected, @zoo.animal_names
  end

  def test_it_can_get_all_species
    skip
    add_all_animals

    expected = [
      'Elephant',
      'Alpaca',
      'Unicorn',
      'Penguin',
      'Giraffe',
      'Panda',
      'Manticore',
      'Tortoise'
    ]

    assert_equal expected, @zoo.species
  end

  def test_it_can_get_oldest_animal
    skip
    add_all_animals

    assert_equal @animal4, @zoo.oldest_animal
  end

  def test_it_can_group_animals_by_category
    skip
    add_all_animals

    expected = {
      mythical_creatures: [
        @animal4,
        @animal9,
        @animal10
      ],
      unmythical_creatures: [
        @animal1,
        @animal2,
        @animal3,
        @animal5,
        @animal6,
        @animal7,
        @animal8
      ]
    }

    assert_equal expected, @zoo.animals_by_category
  end
end
