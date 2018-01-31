require 'rails_helper'

describe Member do
  it "exists" do
    attrs = {
      name: "Gabe",
      role: "instructor",
      party: "animal",
      district: "12"
    }
    member = Member.new(attrs)
    expect(member).to be_a Member
    expect(member.name).to eq("Gabe")
    expect(member.role).to eq("instructor")
    expect(member.party).to eq("animal")
    expect(member.district).to eq("12")
  end
end
