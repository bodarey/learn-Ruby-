def folder_details path
@count = 0
	def get_files path
         Dir.chdir path
	 directory = File.basename(Dir.getwd)
         files = Dir.entries(path).reject{|x| %w[. ..].include? x}
	 puts "#{'-'*@count}-> #{' ' * @count}#{directory}\n\t#{'  ' * @count*2}" + files.to_s
	 @count += 1
	 files.each do |x| 
		if File.directory? x
                  get_files File.join(path, x)
                  Dir.chdir '..'
                  @count -=1
                 
		end
 	 end
	end

get_files path
end
	     
folder_details '/home/andy/Desktop/Ruby-ROR-IlyaBodrovKrukowski'