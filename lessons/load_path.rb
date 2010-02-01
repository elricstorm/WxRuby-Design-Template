# ruby -e "puts $:"

# Two ways of doing this outlined below
#Dir[File.join(File.dirname(__FILE__),"ui","*.rb")].each { |rb_files| load rb_files }
#Dir[File.expand_path('../../ui/*.rb', __FILE__)].each { |rb_files| load rb_files }

