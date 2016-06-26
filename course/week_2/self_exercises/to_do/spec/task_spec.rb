 #task_spec.rb

require_relative("../lib/task.rb")

RSpec.describe Task do
	let :first_task do
		Task.new("Feed the cat")
	end
	describe "complete!" do 
		it "changes the status of completed to true" do
			expect(first_task.complete!).to eq(true)
			end
	end
	describe "make_incomplete!" do 
		it "changes the status of completed back to false" do
			expect(first_task.make_incomplete!).to eq(false)
		end
	end
	describe "update_content!" do
		it "changes the orginal content created to something new" do
			expect(first_task.update_content!("Feed the birds")).to eq("Feed the birds")
		end
	end

end