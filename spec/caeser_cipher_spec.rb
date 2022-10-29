# frozen_string_literal: true

require "./lib/caeser_cipher"

describe "#caeser_cipher" do
  describe "basic shifting" do
    it "returns string with chars shifted forward" do
      expect(caesar_cipher("abc", 1)).to eql("bcd")
    end

    it "returns string with chars shifted backward" do
      expect(caesar_cipher("bcd", -1)).to eql("abc")
    end

    it "maintains capital letters during shift" do
      expect(caesar_cipher("aBcDe", 3)).to eql("dEfGh")
    end
  end

  describe "wrapping letters" do
    it "wraps around the alphabet" do
      expect(caesar_cipher("xyz", 3)).to eql("abc")
    end

    it "wraps around with negative shift value" do
      expect(caesar_cipher("abc", -2)).to eql("yza")
    end
  end

  describe "wrapping shift values" do
    it "wraps around positive shift values" do
      expect(caesar_cipher("abc", 28)).to eql("cde")
    end

    it "wraps around negative shift values" do
      expect(caesar_cipher("dCode Caesar", -166)).to eql("tSetu Squiqh")
    end
  end
end
