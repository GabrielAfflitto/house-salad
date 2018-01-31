class PropublicaService

  def initialize(state)
    @state = state
    @conn = Faraday.new(url: "https://api.propublica.org") do |faraday|
      faraday.headers['x-api-key'] = ENV["PROPUBLICA_API_KEY"]
      faraday.adapter Faraday.default_adapter
    end
  end

  def house_members
    get_json("/congress/v1/members/house/#{state}/current.json")[:results]
  end


  private

    attr_reader :state

    def get_json(url)
      response = @conn.get("/congress/v1/members/house/#{state}/current.json")
      JSON.parse(response.body, symbolize_names: true)
    end

end
