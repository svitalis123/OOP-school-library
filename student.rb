require "./person.rb"
class Student < Person
  def initialize(classroom, name="unknown", parent_permission=true)
    super(age, name, parent_permission)
    @classroom=classroom
  end
  def play_hooky
   "¯\(ツ)/¯"
  end
end
    