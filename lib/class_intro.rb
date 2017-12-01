# class Birds
# end
#
# bird_1 = Birds.new
# bird_2 = Birds.new
# bird_3 = Birds.new
#
# p "1: #{bird_1.object_id}"
# p "2: #{bird_2.object_id}"
# p "3: #{bird_3.object_id}"

class Person
  attr_reader :name,
              :birth_year,
              :language,
              :alive_ness

  def initialize(name, birth_year, language, alive_ness)
    @name = name
    @birth_year = birth_year
    @language = language
    @alive_ness = alive_ness
  end
end

person1 = Person.new("Sergio", 1986, "Spanish", true )
person2 = Person.new("kyle", 1988, "English", true)

# p "person1: #{person1.name} #{person1.birth_year}"
# p "person2: #{person2}"

p person1.name
p person1.language
