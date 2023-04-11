require './person'

class Teacher < Person
  def initialize(age, specialization, name = 'Unknown', _parent_permission: parent_permission)
    super(age, name, parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
