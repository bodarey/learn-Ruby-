require 'json'
class Hash
  # def to_json
  # end
end
h = {'a' => [1,2,3], :b => {:a => 5} }

person = {
first_name: 'Иван',
last_name: 'Петрович',
patronymic: 'Сидоров'
}
#puts person.to_json.inspect 
puts h.to_json.inspect 
