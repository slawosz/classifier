Gem::Specification.new do |s|
  s.name = 'classifier'
  s.version = '1.3.4'
  s.summary = <<-EOF
   A general classifier module to allow Bayesian and other types of classifications.
  EOF
  s.description = <<-EOF
   A general classifier module to allow Bayesian and other types of classifications.
  EOF

  s.files = `git ls-files`.split($/)

  #### Load-time details: library and application (you will need one or both).

  s.require_path = 'lib'
  s.autorequire = 'classifier'

  #### Documentation and testing.


  #### Dependencies and requirements.

  s.add_dependency('fast-stemmer', '>= 1.0.0')
  s.requirements << "A porter-stemmer module to split word stems."

  #### Author and project details.
  s.author = "Lucas Carlson"
  s.email = "lucas@rufy.com"
  s.homepage = "http://classifier.rufy.com/"
end
