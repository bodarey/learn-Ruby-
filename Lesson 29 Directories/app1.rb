# Dir.rmdir('test')
# require 'pry'
# require 'pry-byebug'

def delete_folder(path = File.join('.'))
  directory = File.basename(path)

  def delete_f(path)
    # binding.pry
    begin
      Dir.chdir path
    rescue Exception => e
      puts 'the path does not exist'
      exit
    end
    Dir.entries(path).reject { |x| %w[. ..].include? x }.each do |f|
      File.delete(f) if File.file?(f)
      if File.directory? f
        delete_f File.join(path, f)
        directory = File.basename(Dir.getwd)
        Dir.chdir '..'
        Dir.rmdir directory
      end
      puts '==========='
    end
    directory = File.basename(Dir.getwd)
  end
  delete_f path
  Dir.chdir '..'
  Dir.rmdir directory
  puts 'folder deleted'
end

delete_folder '/home/andy/Desktop/learn-Ruby-Igori-Simdianov/Lesson 29 Directories/test'
