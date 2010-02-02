require 'rubygems'
require 'rake'
require 'rake/clean'
require 'rake/gempackagetask'
require 'rake/rdoctask'
require 'rake/testtask'
require 'spec/rake/spectask'
require 'cucumber/rake/task'
require 'rcov/rcovtask'

spec = Gem::Specification.new do |s|
  s.name = 'GuiTemplate'
  s.version = '1.1.0'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README', 'LICENSE']
  s.summary = 'Template file for project creation'
  s.description = s.summary
  s.author = ''
  s.email = ''
  # s.executables = ['your_executable_here']
  s.files = %w(LICENSE README Rakefile) + Dir.glob("{doc,lib,coverage,features,test,spec}/**/*")
  s.require_path = "lib"
  s.bindir = "bin"
end

Rake::GemPackageTask.new(spec) do |p|
  p.gem_spec = spec
  p.need_tar = true
  p.need_zip = true
end

Rake::RDocTask.new do |rdoc|
  files =['README', 'LICENSE', 'lib/**/*.rb', 'lib/**/*.xrc']
  rdoc.rdoc_files.add(files)
  rdoc.main = "README" # page to start on
  rdoc.title = "Your App Name"
  rdoc.rdoc_dir = 'doc/rdoc' # rdoc output folder
  rdoc.options << '--line-numbers'
end

Rake::TestTask.new do |t|
  t.test_files = FileList['test/**/*.rb']
end

task :verify_rcov => [:spec, :features]

desc "Run all specs"
Spec::Rake::SpecTask.new do |t|
  t.spec_files = FileList['spec/**/*_spec.rb']
  t.spec_opts = ['--options', 'spec/spec.opts']
  unless ENV['NO_RCOV']
    t.rcov = true
    t.rcov_opts << '--text-report'
    t.rcov_opts << '--exclude features\/,spec\/'
    t.rcov_opts << '--aggregate coverage\coverage.data'
    t.rcov_opts << '--sort coverage'
  end
end

desc "Run Cucumber features"
Cucumber::Rake::Task.new do |t|
  t.cucumber_opts = '--no-source'
  t.rcov = true
  t.rcov_opts << '-o coverage'
  t.rcov_opts << '--text-report'
  t.rcov_opts << '--exclude features\/,spec\/'
  t.rcov_opts << '--aggregate coverage\coverage.data'
  t.rcov_opts << '--sort coverage'
end

directory 'coverage'
task :features => 'coverage'
task :spec => 'coverage'

desc "Run unit tests"
Rcov::RcovTask.new(:test) do |t|
  t.pattern = FileList['test/all_tests.rb']
  t.verbose = true
  t.rcov_opts << '--sort coverage'
end

desc "Build executable"
task :build do
  Dir.chdir("lib")
  # You can modify this to use --icon path/to/ico/file to load a custom icon.
  sh "ocra app.rbw core/*.rb core/modules/*.rb icons/*.ico images/*.png ui/*.xrc"
  p "Ocra compile completed."
end

desc "Update rb frames with latest xrc source"
task :xrcise do
  Dir.chdir("lib")
  sh "xrcise -o ui ui/ui.xrc"
  p "Xrcise compile completed."
end

task :default => [:xrcise]