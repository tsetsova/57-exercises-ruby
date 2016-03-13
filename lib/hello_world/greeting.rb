class Greeting

  def initialize
    @known_names = []
    @special_people = {"Ina" => "Hi, lovely, how are you today?"}
  end

  def message(name)
    return "Hello, #{name}, nice to see you again!" if familiar?(name)
    return @special_people[name] if @special_people.has_key?(name)
    add_name(name)
    "Hello, #{name}, nice to meet you!"
  end

  private

  def familiar?(name)
    @known_names.include?(name)
  end

  def add_name(name)
    @known_names << name if !@known_names.include?(name)
  end
end