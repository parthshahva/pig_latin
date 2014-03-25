require 'spec_helper.rb'

describe "pig_latin" do
  it "runs a test" do
  end
  it "has a PigLatin.consonant_check method" do
    blue = PigLatin.translate_check("glove")
    expect(blue).to eq("oveglay")
  end
  it "has a working vowel check method" do
    blue = PigLatin.translate_check("egg")
    expect(blue).to eq("eggway")
  end

  it "can do both consonant_check and vowel_check with translate method" do
    string = "glove egg"
    expect(PigLatin.translate(string)).to eq("oveglay eggway")
  end

  it "can do two checks depending on where y is in the strings" do
      string = "yellow"
      expect(PigLatin.translate(string)).to eq("ellowyay")
  end
end



