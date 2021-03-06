require 'rubygems'
require 'rake'
require 'rake/testtask'

PKG_VERSION = "1.3.3"

PKG_FILES = FileList[
    "lib/**/*", "bin/*", "test/**/*", "[A-Z]*", "Rakefile", "html/**/*"
]

desc "Default Task"
task :default => [ :test ]

# Run the unit tests
desc "Run all unit tests"
Rake::TestTask.new("test") { |t|
  t.libs << "lib"
  t.pattern = 'test/*/*_test.rb'
  t.verbose = true
}

spec = Gem::Specification.new do |s|

  #### Basic information.

  s.name = 'classifier'
  s.version = PKG_VERSION
  s.summary = <<-EOF
   A general classifier module to allow Bayesian and other types of classifications.
  EOF
  s.description = <<-EOF
   A general classifier module to allow Bayesian and other types of classifications.
  EOF

  #### Which files are to be included in this gem?  Everything!  (Except CVS directories.)

  s.files = PKG_FILES

  #### Load-time details: library and application (you will need one or both).

  s.require_path = 'lib'
  s.autorequire = 'classifier'

  #### Documentation and testing.

  s.has_rdoc = true

  #### Dependencies and requirements.

  s.add_dependency('fast-stemmer', '>= 1.0.0')
  s.requirements << "A porter-stemmer module to split word stems."

  #### Author and project details.
  s.author = "Lucas Carlson"
  s.email = "lucas@rufy.com"
  s.homepage = "http://classifier.rufy.com/"
end

# Make a console, useful when working on tests
desc "Generate a test console"
task :console do
   verbose( false ) { sh "irb -I lib/ -r 'classifier'" }
end

