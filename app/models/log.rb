class Log < ActiveRecord::Base
	
	self.table_name="logs"

	ERR_LOGS = {
		'111' => 'SUCCESS',
		'000' => 'FAILURE',			
		'001' => 'DUPLICATE_USER',	
		'010' => 'USER_NO_EXIST',		
		'011' => 'BAD_PERMISSIONS',	
		'100' => 'BAD_CHECKSUM',		
		'101' => 'FATAL_ERROR',		
		'110' => 'BAD_IP',			
	}

	OP = [
		'ADD',
		'UPDATE',
		'REMOVE',
	]

	ERR_LOGS_SEPARATOR = "-"

	def create_from_array (s, site)
		self.operation_type = s[0]
		self.date = s[1]
		self.username = s[2]
		self.second_date = s[3]
		self.ip = s[4]
		self.site = site
	end
	
	
end
