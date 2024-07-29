class Unit
attr_accessor :employees
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
e1 = Unit::Employee.new 'Jhon', 'Taylor', 'Manager'
e2 = Unit::Employee.new 'Marie', 'Smith', 'front-end'
e3 = Unit::Employee.new 'Paul', 'Carter', 'front-end'
e4 = Unit::Employee.new 'Dave', 'Crew', 'back-end'
e5 = Unit::Employee.new 'Poline', 'greck', 'back-end'
e6 = Unit::Employee.new 'Susane', 'kelbourne', 'designer'
e7 = Unit::Employee.new 'Dan', 'McGregpr', 'tester'

unit.add_employee e1
unit.add_employee e2
unit.add_employee e3
unit.add_employee e4
unit.add_employee e5
unit.add_employee e6
unit.add_employee e7

p unit.employees
puts '---------------------'
p unit.select_by_position 'front-end'











                                     
