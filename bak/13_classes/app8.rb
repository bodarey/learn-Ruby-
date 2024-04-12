require 'state_machine'
class Material
   
  state_machine action: :status do
    event :boil do
      transition liquid: :gaz
    end
    event :melt do
      transition solid: :liquid
    end
    event :freez do
      transition liquid: :solid
    end
    event :condense do
      transition gaz: :liquid
    end
    event :sublime do
      transition solid: :gaz
    end
    event :deposit do
      transition gaz: :solid
    end
  end

  def status
    state
  end

  def initialize(name = 'water', material = :liquid)
    self.state = material
    @name = name
    super()
  end
end

m = Material.new  'glas', :gaz# 'water'
m.condense
puts m.status                             
