require './person'

class Student < Person
  def initialize(age, name = 'Unknown', parent_permission: true)
    super(name)
    @age = age
    @parent_permission = parent_permission
    @name = name
  end

  def play_hook
    '¯\(ツ)/¯'
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
