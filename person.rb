require './nameable'
require './basedecorater'
require './capitaldecorator'
require './trimmerdecorater'
require './book'
require './rental'
class Person < Nameable
  attr_accessor :name, :age, :rentals
  attr_reader :id

  def initialize(age, name = 'unknown', parent_permission: true)
    super()
    @id = Random.rand(1..10_000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def correct_name
    @name
  end

  def can_use_services?
    of_age? || @parent_permission == true
  end

  private

  def of_age?
    @age >= 18
  end
end

person = Person.new(22, 'maximilianus')
person.correct_name
Capitalized_Person = CapitalizeDecorator.new(person)
print Capitalized_Person.correct_name
puts "\n\n"
Capitalized_Trimmed_Person = TrimmerDecorator.new(Capitalized_Person)
print Capitalized_Trimmed_Person.correct_name
