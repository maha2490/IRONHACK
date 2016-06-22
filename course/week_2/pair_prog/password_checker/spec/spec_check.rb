#/spec/check.rb


require_relative("../lib/check.rb")
​
​
RSpec.describe Check do 
	let :passcheck do
		Check.new("rainbow@gmail.com", "R1ainbow@")
	end
​
	it "checks that there are more than 7 characters" do
		expect(passcheck.pass_length?).to eq(true)
	end
	
	it "chack that the password has variety" do
		expect(passcheck.alpha_numeral_check?).to eq(true)
	end
​
	it "check that here are symbols" do
		expect(passcheck.symbol_check?).to eq(true)
	end
​
	it "check that the email doesnt expose the password" do
		passcheck2 = Check.new("garfield@cartoon.com", "cartoon")
		expect(passcheck.email_check?).to eq(true)
	end
end