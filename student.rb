require './person'

class Student < Person
  def initialize(age, classroom, name = 'Unknown', _parent_permission: parent_permission)
    super(age, name, parent_permission)
    @classroom = classroom
  end

  def play_hook
    '¯\(ツ)/¯'
  end
end
