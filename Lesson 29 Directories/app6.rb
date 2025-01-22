require 'fileutils'


def copy_folder a,b
FileUtils.copy_entry a,b
end

a = '/home/andy/Desktop/learn-Ruby-Igori-Simdianov/Lesson 29 Directories/test'
b = '/home/andy/Desktop/Jsexpert'

copy_folder a,b