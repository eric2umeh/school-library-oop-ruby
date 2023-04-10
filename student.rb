require './person'

class Student < Person
  def initialize(age, classroom, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permision)
    @classroom = classroom
  end

  def play_hook
    '¯\(ツ)/¯'
  end
end