# encoding: utf-8
require './lib/pry-full'
Gem::Specification.new do |s|
  actual_deps = ['pry-plus'] + YAML.load_file('in.yml').keys
  plus_deps = YAML.load_file('../pry-plus/in.yml').keys
  all_deps = plus_deps + actual_deps
  s.name          = 'pry-full'
  s.version       = PryFull::VERSION
  s.license       = 'CC0'
  s.summary       = 'A metagem; Pry + bunch of pry plugins that get the brainstorming going'
  s.description   = all_deps.join ' + '
  s.homepage      = 'https://github.com/rking/pry-full'
  s.email         = 'rking-pry-full@sharpsaw.org'
  s.authors       = ['☈king', 'Deryl Doucette']
  s.files         = Dir['lib/*']
  s.executables   = Dir['bin/*'].map {|e| e.sub 'bin/', ''}
  actual_deps.each{|e| s.add_dependency e}
end
