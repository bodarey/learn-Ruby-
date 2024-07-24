class Prosimians
  attr_reader :name, :kingdom, :type, :clas, :group, :family, :genus, :species

  def initialize(name, options)
    @name = name
    @kingdom = options[:kingdom] || 'Animals'
    @type = options[:type] || 'Chordata'
    @clas = options[:clas] || 'Mammals'
    @group = options[:group] || 'Primats'
    @family = options[:family] || 'Hominids'
    @genus = options[:genus] || 'Prosimians'
    @species = options[:species] || 'Prosimians'
  end

  def to_s
    "#{@name}: kingdom: #{@kingdom}, type: #{@type}, class: #{@clas}, group: #{@group}, family: #{@family}, genus: #{@genus}, species: #{@species}"
  end
end

class Monkeys < Prosimians
  def initialize(name, options)
    super name, options
    @genus = options[:genus] || 'Monkeys'
    @species = options[:species] || 'Monkeys'
  end
end

class Apes < Monkeys
  def initialize(name, options)
    super name, options
    @genus = options[:genus] || 'Apes'
    @species = options[:species] || 'Apes'
  end
end

class GreatApes < Apes
  def initialize(name, options)
    super name, options
    @genus = options[:genus] || 'Great Apes'
    @species = options[:species] || 'Great Apes'
  end
end
options = { genus: 'human', species: 'Homo sapiens' }

human = GreatApes.new 'human', options
puts human
options[:genus] = 'tarsiers'
options[:species] = 'tarsiers'
tarsiers = Prosimians.new 'tarsiers', options
puts tarsiers
puts tarsiers.group
