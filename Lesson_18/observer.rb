# frozen_string_literal: true

module BaseObservable
  attr_accessor :observers

  def initialize
    @observers = []
  end

  def add_observer(observer)
    @observers << observer
  end

  def delete_observer(observer)
    @observers.delete(observer) unless @observers.include? observer
  end

  def notify_observers
    @observers.each { |observer| observer.update(self) }
  end
end

class Observable
  include BaseObservable
  attr_accessor :name, :position, :salary

  def initialize(hh = {})
    super()
    @name = hh[:name] if hh[:name]
    @position = hh[:position] if hh[:position]
    @salary = hh[:salary] if hh[:salary]
  end
end

######################
class BaseObsever
  def update(_x)
    raise 'update method must be defined'
  end
end

class Payroll < BaseObsever
  def update(observable)
    puts "#{observable.name} is in the list"
    puts 'a new payroll'
  end
end

class Taxpayer < BaseObsever
  def update(observable)
    puts "#{observable.name} is in the list"
    puts 'a new tax calculation'
  end
end
######################

a = Observable.new(name: 'first_name', position: 'manager', salary: 1900)

a.add_observer Payroll.new
a.add_observer Taxpayer.new
a.notify_observers
