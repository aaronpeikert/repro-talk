#!/usr/bin/env ruby
# delets everything that is in .gitignore except pdf

gitignore = File.open(".gitignore").readlines
gitignore.each do |pattern|
  ignoredStuff = Dir.glob(pattern.strip)
  ignoredFiles = ignoredStuff.select{ |i| File.file?(i) }
  filesWithoutPDF = ignoredFiles.select{ |i| !i[/\.pdf$/] }
  filesWithoutPDF.each {|file| File.delete(file)}
end
