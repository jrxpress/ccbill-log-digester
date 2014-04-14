class Log < ActiveRecord::Base
	def create_from_array (s)
		self.operation_type = s[0]
		self.date = s[1]
		self.username = s[2]
		self.second_date = s[3]
		self.ip = s[4]
		self.site = "casas"
	end
end
