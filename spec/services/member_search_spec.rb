require 'rails_helper'

describe MemberSearch do
  let(:member_search){MemberSearch.new("CO")}
  it "exists" do
    expect(member_search).to be_a MemberSearch
  end

  context "instance methods" do
    context "members" do
      it "returns a collection of member objects" do
        VCR.use_cassette("search returns a collection of members") do
          members = member_search.members
          member = members.first
          expect(members.count).to eq(7)
          expect(member).to be_a Member
        end
      end
    end
  end
end
