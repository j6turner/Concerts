require("spec_helper")

describe(Venue) do

  it { should have_and_belong_to_many(:bands) }

  it("validates presence of name") do
    venue = Venue.new({:name => ""})
    expect(venue.save()).to(eq(false))
  end

end
