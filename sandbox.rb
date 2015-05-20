puts "sandbox"

class Sandbox
	def initialize
		puts "I'm a brand new sandbox"
	end

	def dig
		puts "Digging in the sandbox."
	end
end

s = Sandbox.new
s.dig 

