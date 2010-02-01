# This is an example of how to glob files.  This shows two examples of doing so.
# Globing files is fine for external source files like .dlls or .png etc. but not
# for ruby files.  You should use sane requires and loads for requiring/loading ruby
# files.
Dir[File.join(File.dirname(__FILE__),"ui","*.png")].each { |img_files| some_command img_files }
Dir[File.expand_path('../../ui/*.png', __FILE__)].each { |img_files| some_command img_files }

