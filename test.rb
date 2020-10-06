require 'fileutils'

FileUtils.cp "test.rb", "test2.rb"
FileUtils.rm "test2.rb"
puts "PASS"