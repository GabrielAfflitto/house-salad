class Member
  attr_reader :name, :role, :party, :district

  def initialize(attrs = {})
    @name = attrs[:name]
    @role = attrs[:role]
    @party = attrs[:party]
    @district = attrs[:district]
  end
end
