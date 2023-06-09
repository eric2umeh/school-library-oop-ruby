require_relative './nameable'

class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id, :rentals, :parent_permission

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def add_rental(rental)
    @rentals.push(rental)
  end

  def correct_name
    @name
  end

  def of_age?
    @age >= 18
  end

  def parent_permission?
    @parent_permission
  end

  def can_use_services?
    of_age? || parent_permission?
  end

  private :of_age?

  def to_h
    {
      id: @id,
      age: @age,
      name: @name,
      parent_permission: @parent_permission,
      rentals: @rentals.map(&:to_h)
    }
  end
end
