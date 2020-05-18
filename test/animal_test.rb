require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/animal'

class AnimalTest < Minitest::Test
  def setup
    @animal = Animal.new({
      species: 'Elephant',
      name: 'Ellie',
      age: 32,
      is_mythical: false
    })
  end

  def test_it_exists
    assert_instance_of Animal, @animal
  end

  def test_it_has_attributes
    assert_equal 'Elephant', @animal.species
    assert_equal 'Ellie', @animal.name
    assert_equal 32, @animal.age
    assert_equal false, @animal.is_mythical?
  end
end
