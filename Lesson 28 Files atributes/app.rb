
def get_subfolders path = Dir.pwd
#g = File.absolute_path(File.basename Dir.pwd)

#puts g
#puts path
@arr = []

	def get_folder path           
        	Dir.chdir(path)
                @arr << File.basename(Dir.pwd)
                Dir.glob('*').each do |f|
                 if File.directory? f              
                                         get_folder File.absolute_path f
                   Dir.chdir("..") 
		 end
                end

	end
               get_folder path
{'main_folder'=>@arr.shift,'folders'=>@arr}
end


puts get_subfolders '/home/andy/Desktop/Ruby-ROR-IlyaBodrovKrukowski/Ruby с нуля'