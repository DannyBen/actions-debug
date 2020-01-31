def command_exist?(command)
  ENV['PATH'].split(File::PATH_SEPARATOR).any? do |dir|
    File.exist?(File.join dir, command) or File.exist?(File.join dir, "#{command}.exe")
  end
end

if command_exist? 'codenamize'
  puts 'codenamize found'
else
  puts 'codenamize not found'
  exit 1
end