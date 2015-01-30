require("spec_helper")

describe(Band) do

  it { should have_and_belong_to_many(:venues) }

  it("validates presence of name") do
    band = Band.new({:name => ""})
    expect(band.save()).to(eq(false))
  end

  describe("capitalize_name") do
    it("capitalizes first letter of name") do
      band = Band.create({:name => "sterile"})
      expect(band.name()).to(eq("Sterile"))
    end
  end

end
