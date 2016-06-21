# app.rb

require_relative("lib/modules.rb")
require_relative("lib/designer.rb")
require_relative("lib/programmer.rb")


the_designer = Designer.new
the_designer.design_things

puts ""

the_programmer = Programmer.new
the_programmer.program
