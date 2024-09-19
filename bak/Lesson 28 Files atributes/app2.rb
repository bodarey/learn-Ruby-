def change_access path = Dir.pwd
files = Dir.entries(Dir.pwd)
files.each do |f|
 File.chmod(0644,f) if File.file? f
end

end

change_access