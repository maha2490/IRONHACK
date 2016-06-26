#Lexiconomitron_spec.rb
require_relative ("../lib/Lexiconomitron.rb")

RSpec.describe Lexiconomitron do
 let :lexi do 
  Lexiconomitron.new 
  end  
  describe "eat_t" do
    it "removes every letter t from the input" do
      expect(lexi.eat_t("great scott!")).to eq("grea sco!")
    end
  end
  describe "shazam" do
    it "reverses the letter order of each word and returns the first and last words" do
      expect(lexi.shazam("The troll climbed the tree")).to eq(["eh","eer"])
    end
  end 

 describe "oompa_loompa" do
    it "makes an array with words shorter than 3 letters with the ts ommited" do
      expect(lexi.oompa_loompa("The troll climbed the tree")).to eq(["he","he","ree"])
    end
  end   
end