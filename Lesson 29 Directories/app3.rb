def folder_details path
@count = 0
	def get_files path
         Dir.chdir path
	 puts "#{' ' * @count}" + Dir.entries(path).reject{|x| %w[. ..].include? x}.to_s
	 @count += 1
	end

get_files path
end
	     
folder_details Dir.pwd