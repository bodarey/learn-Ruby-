def rows_in_files(path = Dir.pwd, text1 = ' ', text2 = ' ')
  def get_files(path, text1, text2)
    Dir.chdir path
    # list = Dir['*'].select { |x| x.include? ext }
    list = Dir.entries(path).select { |x| File.file? x }
    list.each do |l|
      str = ''
      File.open(l) do |f|
        str = f.read
        str.gsub!(text1, text2)
      end
      File.open(l,'w') do |f|
	f.puts str
      end
    end
    directory = Dir.entries(path).reject { |x| %w[. ..].include? x }
    directory.each do |d|
    get_files File.join(path, d), text1, text2 if File.directory? d
    end
  end
  get_files path, text1, text2
end

 rows_in_files '/home/andy/Desktop/learn-Ruby-Igori-Simdianov/Lesson 29 Directories/test', 'ab', 'z '
