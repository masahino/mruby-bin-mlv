MRuby::Gem::Specification.new('mruby-bin-mlv') do |spec|
  require_relative 'mrblib/version.rb'
  spec.license = 'MIT'
  spec.authors = 'masahino'
  spec.add_dependency 'mruby-scintilla-termbox', github: 'masahino/mruby-scintilla-termbox'
  spec.add_dependency 'mruby-termbox', github: 'masahino/mruby-termbox'
  spec.add_dependency 'mruby-iconv'
  spec.add_dependency 'mruby-optparse', github: 'fastly/mruby-optparse'
  spec.version = Mlv::VERSION
  spec.bins = %w[mlv]
end
