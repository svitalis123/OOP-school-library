class Nameable
  def correct_name
    raise NotImplementedError, "#{self.class} has not implemented method #{__method__}"
  end
end

class Person < Nameable
  def initialize(age, name = 'unknown', parent_permission: true)
    super()
    @id = Random.rand(1..10_000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end
  attr_accessor :name, :age
  attr_reader :id

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

class BaseDecorator < Nameable
  def initialize(nameable)
    super()
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end

class CapitalizeDecorator < BaseDecorator
  def correct_name
    @nameable.correct_name.split.map(&:capitalize).join(' ')
  end
end

class TrimmerDecorator < BaseDecorator
  def correct_name
    @nameable.correct_name.size > 10 ? @nameable.correct_name[0..9] : @nameable.correct_name
  end
end

person = Person.new(22, 'maximilianus')
person.correct_name
Capitalized_Person = CapitalizeDecorator.new(person)
print Capitalized_Person.correct_name
puts "\n\n"
Capitalized_Trimmed_Person = TrimmerDecorator.new(Capitalized_Person)
print Capitalized_Trimmed_Person.correct_name
