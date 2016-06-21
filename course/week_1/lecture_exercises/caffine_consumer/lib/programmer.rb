# lib/programmer.rb

class Programmer 
	include Payable
	include CaffineConsumer
	
  def program
    do_wonderful_things_with_computers
  end

  def do_wonderful_things_with_computers
    puts "Coding wonderful things!"
  end
end