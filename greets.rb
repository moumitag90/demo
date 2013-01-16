class Greets
 attr_accessor :names
 def initialize(names= "World")
	@names=names
 end
 def say_hi
	if @names.nil?
		puts "..."
	elseif @names.respond_to?("join")
		puts "Hello #{@names.join(", ")}!"
	else
		puts "Hello #{@names}!"
	end
 end
 def say_bye
	if @names.nil?
		puts "..."
	elseif @names.respond_to?("each")
		@names.each do |name|
			puts "GOODBYE. #{name}!"
		end
	else
		puts "Goodbye #{@names}!"
	end
 end
 
  mg=Greets.new
  mg.say_hi
  mg.say_bye
  mg.names="jordan"
  mg.say_hi
  mg.say_bye
  mg.names = ["ALbert", "Isaac", "Neil", "Roshni"]
  mg.say_hi
  mg.say_bye
  mg.names=nil
  mg.say_hi
  mg.say_bye
end