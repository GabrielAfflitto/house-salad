class MemberSearch

  def initialize(state)
    @state = state
  end

  def members
    #writing the code we wish existed
    PropublicaService.new(state).house_members.map do |raw_member|
      Member.new(raw_member)
    end


    # conn = Faraday.new(url: "https://api.propublica.org") do |faraday|
    #   faraday.headers['x-api-key'] = ENV["PROPUBLICA_API_KEY"]
    #   faraday.adapter Faraday.default_adapter
    # end
    # response = conn.get("/congress/v1/members/house/#{state}/current.json")
    # JSON.parse(response.body, symbolize_names: true)[:results].map do |raw_member|
    #   Member.new(raw_member)
    # end
  end

  private

    attr_reader :state

end
