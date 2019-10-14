class Member
  attr_reader :id, :name, :role, :house, :patronus

  def initialize(member)
    @id = member[:_id]
    @name = member[:name]
    @role = member[:role]
    @house = member[:house]
    @patronus = member[:patronus]
  end
end
