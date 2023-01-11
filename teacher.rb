require_relative './person.rb'

class Teacher < Person
  def initialize(age, name = 'Unknown', parent_permission = true, specialization)
    super(age, name, parent_permission)
    @specialization = specialization
  end
end
