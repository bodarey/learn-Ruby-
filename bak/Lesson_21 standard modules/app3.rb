require 'json'
class Hash
  # def to_json
  # end

  

  def to_json
    str = self.inspect
    i = 0
    while i < str.length
      str[i] = '"' if str[i] == ':'
      str[i] = '"' if str[i] == '='
      i += 1
    end

    str.gsub!(/>/, ':')

    str
  end
end

person = {
  first_name: 'Иван',
  last_name: 'Петрович',
  patronymic: 'Сидоров',
  params: {
    score: 20,
    number: 762
  },
  arr: { 'a': [1, 2, 3], b: { a: 5 } },
  delta: [2,5,4],
  beta: {a:[8],b:[8]}
}

puts person.to_json 
b = person.to_json
puts JSON.parse b