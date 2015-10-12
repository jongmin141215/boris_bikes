class Bike
	attr_writer :working

	def initialize
		@working = true
	end

	def working?
		@working
	end

	def report_broken
		@working = false
	end

	def broken?
		true if !@working
	end

	def fix
		self.working = true
	end
end
