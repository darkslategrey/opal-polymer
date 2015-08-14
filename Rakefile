


require 'opal'

def compile file
  readed = File.open file, 'r' do |f|
    f.readlines.join
  end
  Opal.compile readed
end


task default: :compile


desc 'compile opal'
task :compile do
  scripts_dir = 'app/scripts/'
  infiles = %w[main].each do |infile|
    infile   = scripts_dir + infile
    compiled = compile infile + '.rb'
    File.open "#{infile}.js", 'w' do |f| f.write compiled end
  end
end
