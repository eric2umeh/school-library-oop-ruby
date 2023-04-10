class Person 
  def initialize(age, name = 'Unknown', _parent_permision: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
  end

  attr_accessor :name, :age
  attr_reader :id

  def of_age?
    @age >= 18
  end

  def can_use_services?
    of_age? || parent_permission?
  end
  private :of_age?
end