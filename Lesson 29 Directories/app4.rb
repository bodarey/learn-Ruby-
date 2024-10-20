def rows_in_files(path = Dir.pwd, ext = '.rb')
  $count = 0
  def get_files(path, ext)
    Dir.chdir path
    # list = Dir['*'].select { |x| x.include? ext }
    list = Dir.entries(path).select { |x| File.extname(x) == ext }
    list.each do |l|
      File.open(l) do |f|
        until f.eof?
          f.gets
          $count += 1
        end
      end
    end
    directory = Dir.entries(path).reject { |x| %w[. ..].include? x }
    directory.each do |d|
      get_files File.join(path, d), ext if File.directory? d
    end
  end
  get_files path, ext
  $count
end

puts rows_in_files '/home/andy/Desktop/learn-Ruby-Igori-Simdianov/Lesson 29 Directories/test', '.txt'
