class Person
  def initialize(age, name="unknown", parent_permission=true)
    @id=Random.rand(1..10000)
    @name=name
    @age=age
    @parent_permission=parent_permission
  end
  attr_reader=:id 
  attr_reader=:name
  attr_reader=:age
  attr_writer=:name
  attr_writer=:age

  def can_use_services?
    is_of_age? || @parent_permission == true
  end

  private 

  def is_of_age?
    @age >= 18
  end

  

end

parser=Person.new(20, "john")
parser2=Person.new(15, "mary", false)
parser3=Person.new(34, "brian")

print parser2.can_use_services?