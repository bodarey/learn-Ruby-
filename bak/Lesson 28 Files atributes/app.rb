def get_subfolders(path = Dir.pwd)
  # g = File.absolute_path(File.basename Dir.pwd)
  @main_path = path
  # puts g
  # puts path
  @arr = []
  @data = []

  def get_folder(path) # return a hash with folders
    Dir.chdir(path)
    @arr << File.basename(Dir.pwd)

    Dir.glob('*').each do |f|
      next unless File.directory? f

      get_folder File.absolute_path f
      Dir.chdir('..')
      if Dir.pwd == @main_path
        @data << @arr
        @arr = []
      end
    end
  end

  def get_result
    base =  @data[0].shift
    folders = @data.map { |x| x[0] }
    subfolders = @data.map { |x| { x.shift => x } }
    { 'main_folder' => base, 'folders' => folders, 'subfolders_of_folders' => subfolders }
  end

  get_folder path
  get_result
end

puts(get_subfolders) # '/home/andy/Desktop/Ruby-ROR-IlyaBodrovKrukowski/Ruby с нуля'
