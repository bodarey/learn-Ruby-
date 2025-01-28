
def folder_size folder = Dir.pwd
bytes = Dir.glob(File.join("#{folder}",'**','*')). # ** files in directory recursively, * all files
	select{|file| File.file? file}.
	sum {|f| File.size f}
b = bytes
kb =  b.to_f/1000
mb = kb.to_f/1000
gb = mb.to_f/1000 
"bytes: #{b}" + "#{(kb>1) ? (',  kb:' + kb.truncate(2).to_s) : ('') }" +
 	 "#{(mb>1) ? (',  mb:' + mb.truncate(2).to_s) : ('') }" +
 	 "#{(gb>1) ? (',  gb:' + gb.truncate(2).to_s) : ('') }"
end

puts folder_size  '/home/andy/Desktop/LIbrary'
