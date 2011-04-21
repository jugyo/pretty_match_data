$: << File.expand_path('../../lib', __FILE__)
require 'pretty_match_data'

puts 'foobarbazfoobarbaz'.match(/foo(bar)(baz)/)