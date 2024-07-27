class Unit
  def initialize(team = '')
    @team = team
    @employees = []
  end

  def add_employee(employee)
    @employees << employee
  end

  def delete_employee(employee)
    @employees.delete employee if @employees.include? employee
  end

  def edit_employee(employee, options)
    return unless employee

    employee.name = options[:name] if options[:name]
    employee.family = options[:family] if options[:family]
    employee.position = options[:position] if options[:position]
  end

  def sort_employees
    @employees.sort! { |a, b| a.name <=> b.name }
    @employees
  end

  def select_by_position(position = '')
    arr = @employees.select { |employee| employee.position == position }
    puts "The list with emoloyees with position: #{position}"
    arr
  end

  class Employee
    attr_accessor :name, :family, :position

    def initialize(name, family_name, position = '')
      @name = name
      @family = family_name
      @position = position
    end
  end
end

unit = Unit.new 'team'
e1 = Unit::Employee.new 'Margarete', 'Tacher', 'front_end'
unit.add_employee e1

e2 = Unit::Employee.new 'Andy', 'Murray', 'back-end'
unit.add_employee e2

p unit
puts '==============='
# unit.delete_employee e
# p unit
unit.edit_employee e1, { name: 'Andy', family: 'Murray' }
p unit.sort_employees

puts '--------------------'

p unit.select_by_position 'front_end'
