$:.unshift File.dirname(__FILE__)

require 'wx'                                   
require 'pp'
require "ui/xrcframemain"
require "core/constants"
require "core/modules/modules"
require "core/main"

Wx::App.run do
  GuiMain.new.show
end
