# encoding: utf-8
Gem::Specification.new do |s|
  s.name          = 'pry-full'
  s.version       = 0.2
  s.summary       = 'Get going quickly with good set of pry gems'
  s.description   = 'Pry is more of an ecosystem than a gem; this is a jumpstart.'
  s.homepage      = 'https://github.com/rking/pry-full'
  s.email         = 'rking-pry-full@sharpsaw.org'
  s.authors       = ['☈king', 'Deryl Doucette']
  s.files         = Dir['lib/*']
  # s.executables << '…' # I've got a few ideas for these

  YAML.load_file('in.yml').each do |e|
    s.add_dependency e
  end
end
