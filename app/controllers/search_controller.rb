class SearchController < ApplicationController

  def index
    @search = MemberSearch.new(params[:state])

    # conn = Faraday.new(url: "https://api.propublica.org") do |faraday|
    #   faraday.headers['x-api-key'] = ENV["PROPUBLICA_API_KEY"]
    #   faraday.adapter Faraday.default_adapter
    # end
    #
    # response = conn.get("/congress/v1/members/house/#{params[:state]}/current.json")
    #
    # @search = JSON.parse(response.body, symbolize_names: true)[:results].map do |raw_member|
    #   Member.new(raw_member)
    # end

    # @search = MemberSearch.new
  end

end

# class MemberSearch
#
#   attr_reader :members
#
#
# end

# class Member
#   attr_reader :name, :role, :party, :district
#
#   def initialize(attrs = {})
#     @name = attrs["name"]
#     @role = attrs["role"]
#     @party = attrs["party"]
#     @district = attrs["district"]
#   end
# end
