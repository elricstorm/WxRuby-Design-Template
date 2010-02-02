$:.unshift File.dirname(__FILE__)

require 'wx'                                   
require 'pp'
require "ui/xrcframemain"
require "core/constants"
require "core/modules/modules"
require "core/main"

# When Ocra is compiling via our rake build command, we can exit
# our script so that the GUI window does not show, else it will
# ignore this statement and continue processing the GUI.
exit if defined?(Ocra)

Wx::App.run do
  GuiMain.new.show
end
